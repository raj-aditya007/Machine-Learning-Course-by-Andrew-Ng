function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
%num_iters = 2;
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

       % ============================================================
     % temp1  = theta(1,1) - (alpha/m)*sum(((x*theta)-y)).*x(:,2));
      %temp2  = theta(2,1) - (alpha/m)*sum(((x*theta)-y)).*x(:,2)) ;
      % ============================================================
      %  theta(1,1) = temp1 ; 
       % theta(2,1) = temp2  ;
      % ============================================================
      
      theta = theta - (alpha/m)*sum(((X*theta)-y).*X)';
      
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
