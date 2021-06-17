function[Xn] = pplap(A,C,delta)
[row,col] = size(A);
temp = diag(A);
for i=1:(row-1)
    temp = [temp diag(A)];
end
B = -A./temp +eye(row);
G = C./diag(A);
Xo = G;k= 1;
while 1
    Xn = B*Xo + G;
    rEx = norm((Xn-Xo)./Xo);
    fX = norm(A*Xn - C);
    if fX < delta
        break
    end
    Xo = Xn;
    k = k+1;
end
k
end
