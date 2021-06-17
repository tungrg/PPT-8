function[] = ptViPhan_Runge(f, a, b, y0, h)
clc
syms x y
x0 =a;
xx = a:h:b
h=xx(2:end)-xx(1:end-1);
k1 = h(1) *f(x0, y0);
k2 = h(1) * f(x0 +h(1)/2, y0 +k1/2);
k3 = h(1) * f(x0 +h(1), y0 -k1* 2*k2);
y(1) = y0 +(k1+ 4*k2+k3)/6;
k1 = h(2) * f(xx(1), y(1));
k2 = h(2) * f(xx(1) + h(2)/2, y(1) + k1/2);
k3 = h(2) * f(xx(1) + h(2), y(1) - k1 +2 *k2);
y(2) = y(1) + (k1 +4*k2+k3)/6;
k1 = h(3) * f(xx(2), y(2));
k2 = h(3) * f(xx(2) +h(3)/2, y(2) + k1/2);
k3 = h(3) * f(xx(2) + h(3), y(2) - k1 +2 *k2);
y(3) = y(2) + (k1 +4*k2+k3)/6;
k1 = h(4) * f(xx(3), y(3));
k2 = h(4) * f(xx(3) +h(4)/2, y(3) + k1/2);
k3 = h(4) * f(xx(3) + h(4), y(3) - k1 +2 *k2);
y(4) = y(3) + (k1 +4*k2+k3)/6;
y(4)
end