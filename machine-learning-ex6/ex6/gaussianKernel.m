function sim = gaussianKernel(x1, x2, sigm)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;
num = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%
for i=1:length(x1)
num =num + (x1(i) - x2(i)).^2; % It makes sense to compare feature by feature since only the same feature make sense to the other feature in that vector 
end
sim = exp(- num /(2*(sigm.^2)));





% ============================================================
    
end
