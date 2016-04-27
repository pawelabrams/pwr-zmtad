load('anova_data.mat');

disp('# ANOVA test:');
p = anova1(wombats, wombat_groups)

% p < 0.05; sa rozne
