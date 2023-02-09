%% graphically
clc; clear all; clf;
ff = @(x)x^3-6*x^2+11*x-6.1;
x = linspace(0,4,500);
n = 0; xb = [];
for i = 1:length(x)
    p(i) = ff(x(i));
%     if sign(f(i)) ~= sign(f(i+1)) %check for sign change
%     nb = nb + 1;
%     xb(nb,1) = x(i);
%     xb(nb,2) = x(i+1);
end
y = zeros(1,size(x,2))
plot(x,y); hold on 
plot(x,p),grid
