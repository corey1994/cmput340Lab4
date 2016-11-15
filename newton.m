function x = newton()
x = [1;2];

for i = 1:40
    s = -jacobian(x)\f(x);
    x = x + s;
end

end

function J = jacobian(x)
J = [1 2; 2*x(1) 8*x(2)];
end

function fx = f(x)
fx = [x(1) + 2*x(2) - 2; x(1)^2 + 4*x(2)^2 - 4];
end