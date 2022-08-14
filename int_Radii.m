% This function computes the intervals 40 times and g decreases by 0.05 at
% each time.

function I = int_Radii(x0,g)
% x is the initial point and g is a parameter;
ig=intval(g);
%x0=intval(newton(x,20,g));
x11=x0(1,:);
int_f=int_myfunction(x0,ig);
A=inv(int_function_df(x0,ig));
A=intval(A);
Y=abs(A*int_f);
num2str(mid(Y));
fprintf('\n');
eps=abs(intval(eye(2))-A*(int_function_df(x0,ig)));
Z1=eps*(intval([1;1]));
Z2=abs(A)*(intval([6*x11;12]));
Z3=abs(A)*(intval([3;0]));
p_int=[Z3,Z2,Z1-intval([1;1]),Y];
p=sup(p_int);
num2str(p)
fprintf('\n');
fprintf('The roots are \n\n')
for i=1:2
    roots(p(i,:))
end
for i=1:2
    a(i,:) = sort (roots(p(i,:)));
end
if norm(imag(a))== 0
    for i=1:2
        I1= infsup(a(1,2),a(1,3));
        I2= infsup(a(2,2),a(2,3));
        I=intersect(I1,I2);
        radii_min=inf(I)*1.1;
%         evaluate_p_at_rad_min = radii_min^3*p(:,1)+radii_min^2*p(:,2)+ radii_min*p(:,3)+p(:,4);     
    end    
else
    I=infsup(-1,-1);
%     evaluate_p_at_rad_min = 1;
end

% if max(sup(evaluate_p_at_rad_min))<=0
%     
%     fprintf('\n\n');
%     display(['Success! The radius is = ',num2str(radii_min)])
%     fprintf('\n\n\n')
% else
%     display('No radius ')
% end


end



