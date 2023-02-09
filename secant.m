function x = secant(s, x0, x1, tol)
err = tol + 1;

while err > tol
    x2 = x1 - s(x1)*(x1 - x0)/(s(x1) - s(x0));
    err = abs((x2 - x1)/x1);
    x0 = x1;
    x1 = x2;
end
x = x2;
