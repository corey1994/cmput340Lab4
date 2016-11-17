addpath /cshome/vis/data;
load human_data;
load walk1;
%robot3D('new');

thetaL = [0;0;0;0];
thetaR = [0;0;0;0];
%For each column in the data
for i = 1:size(L)

    thetaL = invKin3D(Ml , thetaL, L(:,i));
    thetaR = invKin3D(Mr , thetaR, R(:,i));
    theta = [thetaL; thetaR];
    robot3D(humanInterp(drad, theta));

end
