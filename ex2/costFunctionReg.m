function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
x=X;
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

  
sigma =  (-y'*log(sigmoid(x*theta)))-((1-y)'*log(1-sigmoid(x*theta)));
s= 0;

s_theta = theta(2:size(theta));
theta_r = [0;s_theta];

% calulate lambda part
%sizet=size(theta);
%for i =1:sizet-1
%	s  = s  +  (theta(i+1)^2) ;
	%fprintf('sigma %f\n',sigma);
%endfor
% s
%reg = (lambda/2*m) * s; 
%lambda part calculated.

J = (sigma / m) * theta_r'*theta_r;

grad = 1/m*x'*(sigmoid(x*theta)-y) + (lambda)*theta_r;

 
% =============================================================

end
