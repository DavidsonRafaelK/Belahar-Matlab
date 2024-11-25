clear
clc

% Given data
mu_0 = 20000;          % Null hypothesis mean
x_bar = 23500;         % Sample mean
s = 3900;              % Sample standard deviation
n = 100;               % Sample size
alpha = 0.05;          % Significance level

% Degrees of freedom
df = n - 1;

% Calculated t-value
t_value = (x_bar - mu_0) / (s / sqrt(n));

% Critical t-value (one-tailed)
t_critical = tinv(1 - alpha, df);

% P-value
p_value = 1 - tcdf(t_value, df);

% Display Results
disp(['Calculated t-value: ', num2str(t_value)]);
disp(['Critical t-value: ', num2str(t_critical)]);
disp(['P-value: ', num2str(p_value)]);

% Plotting the t-distribution
x = linspace(-4, 10, 500); % Range for t-distribution
t_dist = tpdf(x, df);      % t-distribution PDF

% Plot the t-distribution
figure;
plot(x, t_dist, 'b-', 'LineWidth', 1.5); hold on;

% Highlight the critical region
fill([t_critical, x(x > t_critical), max(x)], ...
     [0, t_dist(x > t_critical), 0], 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none');

% Mark the calculated t-value
xline(t_value, 'g-', 'LineWidth', 1.5, 'Label', ['t = ', num2str(t_value)]);

% Mark the critical value
xline(t_critical, 'r--', 'LineWidth', 1.5, 'Label', 'Critical t');

% Graph settings
title('T-Distribution for Testing Automobile Kilometers');
xlabel('t-value');
ylabel('Density');
legend('t-distribution', 'Critical Region', 'Calculated t', 'Location', 'NorthEast');
grid on;
hold off;
