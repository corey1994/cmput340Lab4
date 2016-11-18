%Returns the matrix for a rotation about the z-axis, 
%given rotation angle theta
function result = Rz(theta)

result = [cos(theta) -sin(theta) 0 0
          sin(theta) cos(theta) 0 0
          0 0 1 0
          0 0 0 1];

end