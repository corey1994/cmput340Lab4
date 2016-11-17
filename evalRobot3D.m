function [pos, J] = evalRobot3D(M, theta)

% Calculate the position using the function
% given in the assignment
pos = M(1)*Rz(theta(3))*Ry(theta(2))*Rx(theta(1)) ...
      *M(2)*Rx(theta(4))*M(3)*[0;0;0;1];
% Remove the homogenous portion (the last element)
pos = pos(1:3);



end