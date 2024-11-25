clear
clc

% Observed Frequencies (O_I)
observed = [72, 144, 84; 
            63, 135, 102; 
            47, 100, 53; 
            40, 105, 55];

% Expected Frequencies (E_I)
total_by_row = sum(observed, 2); % Totals for each time period
total_by_col = sum(observed, 1); % Totals for each category
grand_total = sum(total_by_row); % Total observations

% Calculate expected frequencies
expected = (total_by_row * total_by_col) / grand_total;

% Chi-Square Statistic
chi_square_stat = sum((observed - expected).^2 ./ expected, 'all');

% Degrees of Freedom
df = (size(observed, 1) - 1) * (size(observed, 2) - 1);

% Significance Level and Critical Value
alpha = 0.05;
chi_square_critical = chi2inv(1 - alpha, df);

% Hypothesis Testing
if chi_square_stat > chi_square_critical
    hypothesis_result = 'Reject H0: Proportions are not the same across time periods';
else
    hypothesis_result = 'Fail to Reject H0: Proportions are the same across time periods';
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
title('Chi-Square Distribution for Test of Proportions');
xlabel('\chi^2');
ylabel('Density');
legend('\chi^2 Distribution', 'Critical Value', 'Observed \chi^2', ...
       'Critical Region', 'Location', 'NorthEast');
grid on;
hold off;
