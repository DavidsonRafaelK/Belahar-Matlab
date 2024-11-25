clear
clc

% Given data
mu_0     = 800;         % Hypothesized mean
sigma    = 40;          % Population standard deviation
n        = 30;          % Sample size
x_bar    = 788;         % Sample mean

z        = (x_bar - mu_0) / (sigma / sqrt(n));
p_value  = 2 * 0.0505;

% Display results
fprintf('Test Statistic (z): %.4f\n', z);
fprintf('P-value: %.4f\n', p_value);

% Plotting the standard normal distribution
x = -4:0.01:4; % z-scores
y = normpdf(x, 0, 1); % Standard normal density
figure;
plot(x, y, 'b', 'LineWidth', 1.5); hold on;
area_x = [z, 4]; % Right tail area
fill([z, linspace(z, 4, 100), 4], [0, normpdf(linspace(z, 4, 100), 0, 1), 0], 'r', 'FaceAlpha', 0.5, 'EdgeColor', 'none');
fill([-z, linspace(-z, -4, 100), -4], [0, normpdf(linspace(-z, -4, 100), 0, 1), 0], 'r', 'FaceAlpha', 0.5, 'EdgeColor', 'none');
xline(0, '--k', 'LineWidth', 1);
title('Standard Normal Distribution and Rejection Areas');
xlabel('z-score');
ylabel('Probability Density');
legend({'Normal Distribution', 'Rejection Areas'}, 'Location', 'NorthEast');
grid on;