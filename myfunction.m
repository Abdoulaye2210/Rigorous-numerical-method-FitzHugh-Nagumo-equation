% This function computes the value f at x.

function [y] = myfunction(x,g)

% a,eps and g are parameters.
a = 5;
eps = 1;

y=[x(1)*(x(1)-a)*(1-x(1))-x(2); eps*(x(1)-g*x(2))];
end
