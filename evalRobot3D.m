function [pos, J] = evalRobot3D(M, theta)

pos = calculatePosition(M, theta);
% Remove the homogenous portion (the last element)
pos = pos(1:3);

J = [];
for x = 1:length(theta)
    Jx = calculateJCol(M, theta, x);
    J = [J Jx];
end

J = J(1:3,1:4); %Remove the last row


end

% Calculate the position using the function
% given in the assignment
function pos = calculatePosition(M, theta)

pos = M{1}*Rz(theta(3))*Ry(theta(2))*Rx(theta(1)) ...
      *M{2}*Rx(theta(4))*M{3}*[0;0;0;1];

end

%Calculates one column of the jacobian matrix
%using central differences
%I chose this approach because deriving the analytical
%version in this case would be quite complex.
function Jx = calculateJCol(M, theta, colNum)
alpha = 0.0001;
alphaVector = zeros(size(theta));
alphaVector(colNum) = alpha;

Jx = (calculatePosition(M, theta+alphaVector) - ...
    calculatePosition(M, theta-alphaVector))/(alpha*2);

end