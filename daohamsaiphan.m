function[df_SPT, df_SPL]= daohamsaiphan(xx,yy,df)
    df_SPT = (yy(3)-yy(2))/(xx(3)-xx(2))
    rEdf_SPT = abs(df-df_SPT)/df
    df_SPL = (yy(2)-yy(1))/(xx(2)-xx(1));
    rEdf_SPL = abs(df-df_SPL)/df
end
%[a,b] = daohamsaiphan([0.9 1 1.1 1.2],[0.7833 0.8415 0.8912 0.9320],0.5403)