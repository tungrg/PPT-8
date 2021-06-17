function[]= viphanlap(fxy,a,b,y0,delta)
    syms x;
    syms y;
    x0 = a;
    k = 1;
    yo= y0;
    while 1
        yn = y0 + int(subs(fxy,y,yo),x,x0,x)
        rEyn = double(abs(int(yn-yo,x,a,b)/int(yo,x,a,b)))
        if(rEyn <= delta)
            break
        end
        yo = yn;
        k = k+1
    end
end

% syms x y
% fxy = x + y
% viphanlap(fxy,0,0.4,1,0.001)
% syms x y
% fxy = 2*x^2 + y
% viphanlap(fxy,0,0.5,1,0.001)
