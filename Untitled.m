
clear all;
h=0.1;                                             % step size
x = 0:h:0.5;                                         % Calculates upto y(3)
y = zeros(1,length(x)); 
y(1) = 1;                                          % initial condition
F_xy = @(t,r) 2.*t.^2 + r;                    % change the function as you desire
for i=1:(length(x)-1)                              % calculation loop
    k_1 = h*F_xy(x(i),y(i));
    k_2 = h*F_xy(x(i)+0.5*h,y(i)+0.5*k_1);
    k_3 = h*F_xy((x(i)+h),(y(i)-k_1 + 2*k_2));
    y(i+1) = y(i) + (1/6)*(k_1+4*k_2+k_3);  % main equation
end
y(length(x))