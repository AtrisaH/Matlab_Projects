clc
clear

h = 1e-5; % Step size for differentiation
x = linspace(0, 4, 100); %defining x values

% Numerical derivatives
df1_dx = (function_1(x + h) - function_1(x - h)) / (2 * h);
df2_dx = (function_2(x + h) - function_2(x - h)) / (2 * h);

figure
plot(x, df1_dx, 'b', 'LineWidth', 1.5); % Plot derivative of f1
hold on
plot(x, df2_dx, 'r', 'LineWidth', 1.5); % Plot derivative of f2
hold off

xlabel('x')
ylabel('Derivative')
legend('f1''(x)', 'f2''(x)')
title('Numerical Derivatives of f1(x) and f2(x)')
grid on
