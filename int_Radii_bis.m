% This function computes the intervals 40 times and g decreases by 0.05 at
% each time.

function I = int_Radii_bis(x0,iter,g)

step=1;
%x0 = newton(x,iter,g);

while g>0
   % f = myfunction(x0,g);
    %df = function_df(x0,g);
    x0 = newton(x0,iter,g);
    fprintf('iteration number %10g \n',step);
    fprintf('The norm of x %10f is \n ', norm(x0))
    I=int_Radii(x0,g);
    display(['The interval is given by I = [',num2str(inf(I)),' ', num2str(sup(I)),']'])
    norm_x(step)=norm(x0);
    gamma(step)=g;
    step=step+1;
    g=g-0.05;
end

    plot(gamma,norm_x,'*')


