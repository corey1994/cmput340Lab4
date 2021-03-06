function theta = invKin2D(l,theta0,pos,n,mode)

%Sets the desired size of the residual
threshold = 0.00001;

if mode == 0    
    theta = newton(l,theta0,pos,n,threshold);
else
    theta = broyden(l,theta0,pos,n,threshold);
end
end

function theta = newton(l,theta,pos,n,threshold)
    
    %Iterate a maximum of n times (specified by caller)
    for i = 1:n
        jacobian = fdJacob2D(l,theta);
        fx = evalRobot2D(l,theta) - pos;
        s = -jacobian\fx;
        theta = theta + s;
        
        if s < threshold
            break
        end
       
    end
end

function theta = broyden(l,theta,pos,n,threshold)
    %Compute initial jacobian
    [~, B] = evalRobot2D(l,theta);
   
    for i = 1:n
        fx = evalRobot2D(l,theta) - pos;
        s = -B\fx;
        thetaNext = theta + s;
        y = evalRobot2D(l,thetaNext) - evalRobot2D(l,theta);
        theta = thetaNext;
        B = B + ((y - B*s)*s')/(s'*s);
        
        if s < threshold
            break
        end
    end

end