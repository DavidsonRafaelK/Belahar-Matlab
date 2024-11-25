clear
clc

% Observed Frequencies (O_I)
observed = [14, 37, 32; 19, 42, 17; 12, 17, 10]; % Rows: Education Levels, Columns: Number of Children

% Row and Column Totals
row_totals = sum(observed, 2); % Sum of rows (Education levels)
col_totals = sum(observed, 1); % Sum of columns (Number of children)
grand_total = sum(row_totals); % Total number of observations

% Expected Frequencies (E_I)
expected = (row_totals * col_totals) / grand_total;

% Chi-Square Test Statistic
chi_square_stat = sum((observed - expected).^2 ./ expected, 'all');

% Degrees of Freedom
df = (size(observed, 1) - 1) * (size(observed, 2) - 1);

% Significance Level and Critical Value
alpha = 0.05;
chi_square_critical = chi2inv(1 - alpha, df);

% Hypothesis Testing
if chi_square_stat > chi_square_critical
    hypothesis_result = 'Reject H0: Family size is dependent on father''s education level';
else
    hypothesis_result = 'Fail to Reject H0: Family size is independent of father''s education level';
end

% Display Results
disp(['Chi-Square Statistic: ', num2str(chi_square_stat)]);
disp(['Critical Value: ', num2str(chi_square_critical)]);
disp(['Hypothesis Test Result: ', hypothesis_result]);

% Plot Chi-Square Distribution
x = linspace(0, 15, 500); % Range for Chi-Square distribution
chi_square_dist = chi2pdf(x, df); % Chi-Square PDF

% Plot settings
figure;
plot(x, chi_square_dist, 'b-', 'LineWidth', 1.5); hold on;
xline(chi_square_critical, 'r--', 'LineWidth', 1.5, 'Label', 'Critical Value');
xline(chi_square_stat, 'g-', 'LineWidth', 1.5, 'Label', ['\chi^2 = ', num2str(chi_square_stat)]);
fill([chi_square_critical x(x > chi_square_critical) max(x)], ...
     [0 chi_square_dist(x > chi_square_critical) 0], 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
title('Chi-Square Distribution for Test of Independence');
xlabel('\chi^2');
ylabel('Density');
legend('\chi^2 Distribution', 'Critical Value', 'Observed \chi^2', ...
       'Critical Region', 'Location', 'NorthEast');
grid on;
hold off;
