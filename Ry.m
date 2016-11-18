%Returns the matrix for a rotation about the y-axis, 
%given rotation angle theta
function result = Ry(theta)

result = [cos(theta) 0 sin(theta) 0
          0 1 0 0
          -sin(theta) 0 cos(theta) 0
          0 0 0 1];

end