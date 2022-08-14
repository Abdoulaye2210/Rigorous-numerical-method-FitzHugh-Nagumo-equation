% This function computes de Jacobian matrix for FitzHugh-Nagumo equation.

function [dy] = function_df(x,g)

% x is the initial guess of the root
% r is a parameter in the Lorenz equation
a = 5;
eps = 1;
%g = 2;
%The Jacobian matrix
dy(1,1) = -3*x(1)^2 + x(1)*(2+2*a)-a;
dy(1,2) = -1;
dy(2,1) = eps;
dy(2,2)=-eps*g;

end

