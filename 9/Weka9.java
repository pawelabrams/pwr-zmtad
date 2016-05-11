import java.io.File;
import weka.core.Instances;
import weka.core.converters.ArffSaver;
import weka.core.converters.ConverterUtils.DataSource;
import weka.filters.Filter;
import weka.filters.unsupervised.attribute.Remove;
import weka.filters.unsupervised.instance.RemoveWithValues;

public class Weka9 {

	public static void main(String[] args) {
		try {
		  // load data source
			DataSource ds = new DataSource("203417L2_2.arff");
			Instances data = ds.getDataSet();
			
			// filter out odmowas
			String[] opts_rv = {"-C", "1", "-L", "5"};
			RemoveWithValues rv = new RemoveWithValues();
			rv.setOptions(opts_rv);
			rv.setInputFormat(data);
			data = Filter.useFilter(data, rv);
			
			// filter out >= 900
			String[] opts_rv2 = {"-C", "2", "-S", "900", "-V"};
			RemoveWithValues rv2 = new RemoveWithValues();
			rv2.setOptions(opts_rv2);
			rv2.setInputFormat(data);
			data = Filter.useFilter(data, rv2);
			
			// remove status_pozyczki column
			String[] opts = {"-R", "1"};
			Remove r = new Remove();
			r.setOptions(opts);
			r.setInputFormat(data);
			data = Filter.useFilter(data, r);
			
			// save new data
			ArffSaver as = new ArffSaver();
			as.setInstances(data);
			as.setFile(new File("203417L3_2.arff"));
			as.writeBatch();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
