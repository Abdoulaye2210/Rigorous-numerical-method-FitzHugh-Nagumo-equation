% Newton´s method for the  FitzHugh-Nagumo equation

function x = newton(x,iter,g)

% invf is the approximation of the inverse of the Jacobian matrix at x.
tol=1e-15;
j=0;
f = myfunction(x,g);

while j<=iter && norm(f)>=tol
    j=j+1;
    f = myfunction(x,g);
    invf =inv(function_df(x,g));
    s = invf*f;
    x=x-s;
    y=norm(f);
    display(['Iteration = ',num2str(j)])
    display(['La norme de f = ',num2str(y)])
   
  
end

% if x0 = [1;0] and g = 2 then  x = [1.1292; 0.5646] 

% if x0 = [1.1292; 0.5646] then x = [1.1326; 0.5808]

% If we repeat this procedure 40 times, we can see that this method converges to
% zero in 37th iteration with g = 0.2 . Therefore if g = 0.2  then for all
% initial condition x0, we have x = [0; 0]. 


