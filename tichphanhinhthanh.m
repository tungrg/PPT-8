function[tphinhthang] = tichphanhinhthanh(xx,yy,df)
    tphinhthang = 0;
    a =  length(xx);
   for i=2:a
       tphinhthang = tphinhthang + (xx(i) - xx(i-1))*(yy(i)+yy(i-1))/2;
   end
   rEdf_hinhthanh = abs(df-tphinhthang)/df
end
%bai3 [a] = tichphanhinhthanh([1; 2; 3; 4; 5; 6; 7],[ 4; -6; -14; -14; 0; 34; 94],42)
%bai4 [a] = tichphanhinhthanh([-2 -1 0 1 2 3 4],[ 24 1 4 3 -8 -11 36],7.2)