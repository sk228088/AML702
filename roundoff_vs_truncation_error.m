% Round off error and truncation error
function roundoff_vs_truncation_error(func,dfunc,x,n)
format long;
dftrue = dfunc(x);
h = 1;
H(1) = h;
D(1) = (func(x+h)-func(x-h))/(2*h);
E(1) = abs(dftrue - D(1));

for i = 2:n
    h = h/10;
    H(i) = h;
    D(i) = (func(x+h)-func(x-h))/(2*h);
    E(i) = abs(dftrue - D(i));
end
clf;
loglog(H,E)
end




