%% fix point method

function x = fixed_point(g,x0,tol)
format long
x = x0;
err = tol + 1;
itercount = 1;
v = [];
while err > tol
    xnew = g(x);
    itercount = itercount + 1;
    v(itercount) = itercount;
    err(itercount) = abs((xnew - x)/xnew);
    x = xnew;
%      fprintf,itercount,x,err)
%     
end
plot(v,err)
end
