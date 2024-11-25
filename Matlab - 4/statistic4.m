% Clear workspace and command window
clear;
clc;

% Data for the two instruments
instrumentA = [0.86, 0.82, 0.75, 0.61, 0.89, 0.64, 0.81, 0.68, 0.65];
instrumentB = [0.87, 0.74, 0.63, 0.55, 0.76, 0.70, 0.69, 0.57, 0.53];

% Number of samples
nA = length(instrumentA);
nB = length(instrumentB);

% Degrees of freedom
v1 = nA - 1;
v2 = nB - 1;

% Compute sample variances
sA2 = var(instrumentA, 1); % Variance of Instrument A
sB2 = var(instrumentB, 1); % Variance of Instrument B

% Compute F-statistic
F = sA2 / sB2;

% Critical values for F-distribution
F_critical_upper = 4.433; % from the problem
F_critical_lower = 0.225; % reciprocal of F_critical_upper

% Determine hypothesis result
if F < F_critical_lower || F > F_critical_upper
    hypothesis_result = 'Reject H0: Variances are different';
else
    hypothesis_result = 'Fail to Reject H0: Variances are not significantly different';
end

% Display results
disp(['F-statistic: ', num2str(F)]);
disp(['Hypothesis Test Result: ', hypothesis_result]);

% Plot the F-distribution
x = linspace(0, 5, 500); % Range for F-distribution
f_dist = fpdf(x, v1, v2); % F-distribution

% Plot settings
figure;
plot(x, f_dist, 'b-', 'LineWidth', 1.5); hold on;
xline(F_critical_lower, 'r--', 'LineWidth', 1.5, 'Label', 'Critical Lower');
xline(F_critical_upper, 'r--', 'LineWidth', 1.5, 'Label', 'Critical Upper');
xline(F, 'g-', 'LineWidth', 1.5, 'Label', ['Observed F = ', num2str(F)]);
fill([0 x(x < F_critical_lower) F_critical_lower], ...
     [0 f_dist(x < F_critical_lower) 0], 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
fill([F_critical_upper x(x > F_critical_upper) max(x)], ...
     [0 f_dist(x > F_critical_upper) 0], 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
title('F-Distribution with Critical Regions');
xlabel('F');
ylabel('Density');
legend('F-distribution', 'Critical Boundaries', 'Observed F', ...
       'Critical Regions', 'Location', 'NorthEast');
grid on;
hold off;
