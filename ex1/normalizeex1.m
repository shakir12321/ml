function [X_norm, mu, sigma] = normalizeex1(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly

%fprintf("before noarmize, the X is: %f\n  ", X);
X_norm = X;
mu = zeros(1, size(X, 1));
sigma = zeros(1, size(X, 1));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X(:,1));
sigma = std(X(:,1));

X_norm(:,1) = X_norm(:,1) - mu;
X_norm(:,1) = X_norm(:,1)/sigma;

fprintf("X_norm is \n");
X_norm;
  
%fprintf('X_norm in feature Normalizes:\n');
%%fprintf('second param %f\n', X_norm(:,1));
  
return;








% ============================================================

end
