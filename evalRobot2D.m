%Returns the position of the end effector, and the jacobian matrix,
%given a vector of lengths and a vetor of angles.
function [pos,J] = evalRobot2D(l, theta)

%Compute position vector, using formula given in assignment
x = l(1)*cos(theta(1)) + l(2)*cos(theta(1)+theta(2));
y = l(1)*sin(theta(1)) + l(2)*sin(theta(1)+theta(2));
pos = [x;y];

%Compute Jacobian
J11 = -l(1)*sin(theta(1)) - l(2)*sin(theta(1)+theta(2));
J12 = -l(2)*sin(theta(1)+theta(2));
J21 = l(1)*cos(theta(1)) + l(2)*cos(theta(1)+theta(2));
J22 = l(2)*cos(theta(1)+theta(2));
J = [J11 J12; J21 J22];







