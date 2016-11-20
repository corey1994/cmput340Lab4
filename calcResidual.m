%Returns the residual between the desired position of the end effector,
%and the position that would be achieved by the given theta
function residual = calcResidual(l, desiredPos, theta)

achievedPos = evalRobot2D(l, theta);

v = achievedPos - desiredPos;
residual = sqrt(v(1)^2 + v(2)^2);

end