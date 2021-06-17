function[]  = viphaneulercaitien(fxy,a,b,y0,h)
    k = 0;
    xx = a:h:b;
    yo = y0;
    for i=1:(length(xx)-1)
        k = k + 1
        y_n = yo + h*fxy(xx(i),yo);
        yn = yo + h/2*(fxy(xx(i),yo)+fxy(xx(i+1),y_n))
        yo = yn;
    end
end
% bai 3: 
%viphaneulercaitien(@(x,y) x + y,0,0.4,1,0.1)
% bai 4:
% viphaneulercaitien(@(x,y) 2*x^2 + y,0,0.5,1,0.1)