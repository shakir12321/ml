function [g] = sigmoid(z)
%g= 0;
g= zeros(size(z));
g= 1./(1+power(e,-z));

end