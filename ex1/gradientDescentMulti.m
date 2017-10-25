function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


%fprintf('Inside Gradient Descent Multi \n');
X = [ones(m, 1) X];

%fprintf('Prameters X %f \n', X);
%fprintf('Prameters y %f \n', y);

%fprintf('Prameters theta %f \n', theta);
%fprintf('Prameters alpha %f \n', alpha);
%fprintf('Prameters num_iters %f \n', num_iters);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    f1 = @(i) theta(1) + ((theta(2)*X(i,1))+(theta(3).*X(i,1))) - y(i);
    sigmaf1 = sum(f1([1:m]));
  
    f2 = @(j) (theta(1) + ((theta(2)*X(j,2))+(theta(3).*X(j,2))) - y(j)) .* X(j,2);
     sigmaf2 = sum(f2([1:m]));
     
    f3 = @(j) (theta(1) + ((theta(2)*X(j,3))+(theta(3).*X(j,3))) - y(j)) .* X(j,3);
     sigmaf3 = sum(f3([1:m]));
    

    t0 = theta(1) - alpha * (1/m) .* sigmaf1;
   
    t1  = theta(2) - alpha * (1/m) .* sigmaf2;
     
    t2  = theta(3) - alpha * (1/m) .* sigmaf3;
   
    theta(1) = t0;
    theta(2) = t1;
    theta(3) = t2;
  
 

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
