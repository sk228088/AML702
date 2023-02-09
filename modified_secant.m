function x = modified_secant(s, x1, tol, h)
err = tol + 1;

while err > tol
    %fx0 = s(x0);
    fx1 = s(x1);
    fxh = s(x1 + h*x1);
    x2 = x1 - (h*fx1*x1)/(fxh-fx1);
    err = abs((x2 - x1)/x1);
    %x0 = x1;
    x1 = x2;
end
x = x2;