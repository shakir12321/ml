function [X_norm, mu, sigma, y_norm] = normalizemulti(X, y)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly

%fprintf("before noarmize, the X is: %f\n  ", X);
X_norm = X;
y_norm = y;
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

%% 2'nd column
mu = mean(X(:,2));
sigma = std(X(:,2));

muy = mean(y);

%5X_norm(:,2) = X_norm(:,2) - mu;
X_norm(:,2) = X_norm(:,2)/sigma;

%% 3'rd column
mu = mean(X(:,3));
sigma = std(X(:,3));

%X_norm(:,3) = X_norm(:,3) - mu;
X_norm(:,3) = X_norm(:,3)/sigma;

y_norm = y_norm/muy; 
fprintf("X_norm is \n");
X_norm;
   

   
   
return;








% ============================================================

end
