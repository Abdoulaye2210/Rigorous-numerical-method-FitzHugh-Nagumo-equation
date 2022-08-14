% This function computes de Jacobian matrix for FitzHugh-Nagumo equation.

function [dy] = int_function_df(ix,ig)

% ix is the initial guess of the root
% ig is a parameter in the Lorenz equation
a = intval(5);
eps = intval(1);
%The Jacobian matrix
dy(1,1) = -3*ix(1)^2 + ix(1)*(2+2*a)-a;
dy(1,2) = intval(-1);
dy(2,1) = eps;
dy(2,2)=-eps*ig;

end

