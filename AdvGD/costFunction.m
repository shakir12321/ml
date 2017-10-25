function [jVal, gradient] = costFunction(theta)
  jVal = (theta(1) -5)^2 + (theta(2) -5)^2;
  gradient = zeros(2,1);
  %gradient(1) = 2*(theta(1) -5);
  %FYT796P64 4NMU 66 U98PAWP 4  M,/LKJHGFDgradient(2) = 2*(theta(2) - 5);
  
EF