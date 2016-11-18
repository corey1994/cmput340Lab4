%Returns the matrix for a rotation about the x-axis, 
%given rotation angle theta
function result = Rx(theta)

result = [1 0 0 0
          0 cos(theta) -sin(theta) 0
          0 sin(theta) cos(theta) 0
          0 0 0 1];

end
