function[df_3dg, df_3dc]= daoham3diem(xx,yy,df)
    df_3dc=(-3*yy(2)+4*yy(3)-yy(4))/(xx(4)-xx(2));
    rEdf_3dc=abs((df-df_3dc)/df)
    df_3dg=(-yy(1)+yy(3))/(xx(3)-xx(1)),
    rEdf_3dg=abs((df-df_3dg)/df);
end
%[a,b] = daoham3diem([0.9 1 1.1 1.2],[0.7833 0.8415 0.8912 0.9320],0.5403)