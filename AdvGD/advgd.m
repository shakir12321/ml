clear ; close all; clc

options = optimset('GradObj', 'off', 'Maxiter', '100');
initialTheta = zeros(2,1);
[optTheta, functionVal,exitFlag] = fminunc(@costFunction, initialTheta, options);
fprintf('The returned values are:\n');
optTheta
functionVal
exitFlag