% This function computes the value f at x associated to the FitzHugh-Nagumo equation

function [y] = int_myfunction(ix, ig)

% a,eps and g are parameters.
a = intval(5);
eps = intval(1);

y=[ix(1)*(ix(1)-a)*(1- ix(1))-ix(2); eps*( ix(1)-ig*ix(2))];
end
