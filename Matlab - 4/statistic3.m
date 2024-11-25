% Given data
n = 200; % Sample size
x = 110; % Number of residents favoring the annexation
p0 = 0.60; % Hypothesized proportion
alpha = 0.05; % Significance level

% Sample proportion
p_hat = x / n;

% Standard error of the proportion
SE = sqrt((p0 * (1 - p0)) / n);

% Z-statistic
Z = (p_hat - p0) / SE;

% Critical value for a left-tailed test at alpha = 0.05
Z_critical = norminv(alpha, 0, 1);

% Plot the normal distribution (Z-distribution)
z_values = linspace(-4, 4, 1000); % Range of Z values
z_pdf = normpdf(z_values, 0, 1); % Standard normal distribution

figure;
plot(z_values, z_pdf, 'LineWidth', 2); % Plot the Z-distribution
hold on;

% Shade the critical region (Z < Z_critical)
x_fill = linspace(-4, Z_critical, 100);
y_fill = normpdf(x_fill, 0, 1);
fill([x_fill, Z_critical], [y_fill, 0], 'r', 'FaceAlpha', 0.5);

% Mark the calculated Z-statistic on the plot
plot(Z, normpdf(Z, 0, 1), 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 8);

% Labels and title
xlabel('Z-value');
ylabel('Probability Density');
title('Z-Test for Proportion: Hypothesis Test Visualization');
legend({'Standard Normal Distribution', 'Critical Region', 'Calculated Z-statistic'}, 'Location', 'Best');
grid on;

% Display results on the graph
fprintf('Sample proportion: %.4f\n', p_hat);
fprintf('Z-statistic: %.4f\n', Z);
fprintf('Critical value: %.4f\n', Z_critical);
