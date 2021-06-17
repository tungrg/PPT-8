function[]  = viphaneuler(fxy,a,b,y0,h)
    k = 0;
    xx = a:h:b;
    yo = y0;
    for i=1:length(xx)
        k = k + 1
        yn = yo + h*fxy(xx(i),yo)
        yo = yn;
    end
end
% bai 3: 
%viphaneuler(@(x,y) x + y,0,0.4,1,0.1)
% bai 4:
% viphaneuler(@(x,y) 2*x^2 + y,0,0.5,1,0.1)
