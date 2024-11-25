% Given Data
n1 = 15; % Sample size for the first group
x1 = 7.5; % Mean of the first group
S1 = 1.5; % Standard deviation of the first group

n2 = 12; % Sample size for the second group
x2 = 8.8; % Mean of the second group
S2 = 1.2; % Standard deviation of the second group

alpha = 0.01; % Significance level
df = n1 + n2 - 2; % Degrees of freedom

% Pooled standard deviation
Sp = sqrt(((n1-1)*(S1^2) + (n2-1)*(S2^2)) / (n1 + n2 - 2));

% Calculated t-statistic
t_stat = (x2 - x1 - 0.5) / (Sp * sqrt(1/n1 + 1/n2));

% Critical value from the t-distribution
t_critical = tinv(1 - alpha, df); % Upper critical value for one-tailed test

% Create t-distribution curve
t_values = linspace(-5, 5, 100);
t_pdf = tpdf(t_values, df);

% Plot the t-distribution
figure;
plot(t_values, t_pdf, 'LineWidth', 2);
hold on;

% Shade the critical region
x_fill = linspace(t_critical, 5, 100);
y_fill = tpdf(x_fill, df);
fill([x_fill, t_critical], [y_fill, 0], 'r', 'FaceAlpha', 0.5);

% Plot the calculated t-statistic
plot(t_stat, tpdf(t_stat, df), 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 8);

% Add labels and title
xlabel('t-value');
ylabel('Probability Density');
title('t-Distribution with Critical Region');

% Display the critical region and test statistic
legend({'t-distribution', 'Critical Region (t > t_{critical})', 'Calculated t-statistic'}, 'Location', 'Best');
grid on;
