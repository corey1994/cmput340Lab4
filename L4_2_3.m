addpath /cshome/vis/data;
load human_data;
load walk5;
robot3D('new');

thetaL = [-pi/8;0;-pi/16;pi/4];
thetaR = [-pi/8;0;pi/16;pi/4];
%For each column in the data
for i = 1:size(L,2)

    thetaL = invKin3D(Ml , thetaL, L(:,i));
    thetaR = invKin3D(Mr , thetaR, R(:,i));
    theta = [thetaL; thetaR];
    robot3D(humanInterp(drad, theta));
    pause(0.05);

end
