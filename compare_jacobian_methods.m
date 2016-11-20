%I used this script to easily compare the central differences jacobian with
%the analytical jacobian.

l = [1,1]';

theta = [pi,pi]';
alpha = 0.0000001;


[~,J] = evalRobot2D(l, theta);
fdJ = fdJacob2D(l, theta, alpha);

difference = J - fdJ