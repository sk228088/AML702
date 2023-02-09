%% Newton Raphson method
function x_NR = newton_raphson(f, df, x0_NR, tol_NR)
x_NR = x0_NR;
err_NR = tol_NR + 1;

while err_NR > tol_NR
    xnew_NR = x_NR - f(x_NR)/df(x_NR);
    err_NR = abs((xnew_NR - x_NR)/x_NR);
    x_NR = xnew_NR;
end
end


