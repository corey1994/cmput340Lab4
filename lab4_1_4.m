%Test the effect of mode, testing the residual and the time.
l = [1,1];
theta0 = [pi/4,pi/4]';
pos = [3,3]';
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

