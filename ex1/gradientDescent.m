function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
%f = @(x) exp(-x)
% sum(f([1:5]))
% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    f1 = @(i) (theta(1) + (theta(2)*X(i,1)) - y(i));
    sigmaf1 = sum(f1([1:m]));
     

    f2 = @(j) ((theta(1) + (theta(2)*X(j,2)) - y(j)).*X(j,2));
    sigmaf2 = sum(f2([1:m]));
    
    t0 = theta(1) - (alpha * (1/m) .* (sigmaf1));
    t1  = theta(2) - (alpha * (1/m) .* (sigmaf2));
    theta(1) = t0;
    theta(2) = t1;
      % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %fprintf('J_history(iter)  %f\n',J_history(iter));

end

end