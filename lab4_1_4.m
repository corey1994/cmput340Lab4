%Test the effect of mode, testing the residual and the time.
l = [1,1];
theta0 = [pi/2,pi/2]';
pos = [0,0]';
n = 10;

f = @() invKin2D(l, theta0, pos, n, 0);
newtonTime = timeit(f)

f = @() invKin2D(l, theta0, pos, n, 1);
broydenTime = timeit(f)


timeDifference = broydenTime - newtonTime


newtonAns = invKin2D(l, theta0, pos, n, 0);
broydenAns = invKin2D(l, theta0, pos, n, 1);

newtonResidual = calcResidual(l, pos, newtonAns)
broydenResidual = calcResidual(l, pos, broydenAns)
residualDifference = broydenResidual - newtonResidual

