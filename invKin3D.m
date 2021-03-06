function theta = invKin3D(M,theta,pos)

    threshold = 0.00001;
    n = 100;

    for i = 1:n
        [newPos, jacobian] = evalRobot3D(M, theta);
        fx = newPos - pos;
        s = -jacobian\fx;
        theta = theta + s;
        
        if s < threshold
            break
        end
       
    end

end