function J = fdJacob2D(l,theta,alpha)
if(nargin<3)
    alpha = 0.0001;
end

J1 = (evalRobot2D(l,theta+[alpha;0])-evalRobot2D(l,theta-[alpha;0]))/(2*alpha);
J2 = (evalRobot2D(l,theta+[0;alpha])-evalRobot2D(l,theta-[0;alpha]))/(2*alpha);
J = [J1 J2];

