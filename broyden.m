x = [1;2];
B = [1 2; 2 16];

for i = 1:10
    s = -B\f(x);
    xNext = x + s
    y = f(xNext) - f(x);
    x = xNext;
    B = B + ((y - B*s)*s')/(s'*s);
end



function fx = f(x)
fx = [x(1) + 2*x(2) - 2; x(1)^2 + 4*x(2)^2 - 4];
end