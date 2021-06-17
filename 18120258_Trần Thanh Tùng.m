%chuong 5
%Bai 4, Viet function cho bai toan giai he 5 phuong trinh 5 an
  %a) phuong phap lap
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
      rEx = norm((Xn-Xo)./Xo),
      fX = norm(A*Xn - C),
      if fX < delta
          break
      end
      Xo = Xn;
      k = k+1
  end
  end
  %b) phuong phap seidel
  function[Xn] = ppSeidel(A,C,delta)
    [row,col] = size(A);
    temp = diag(A);
    for i=1:(row-1)
        temp = [temp diag(A)];
    end
    B = -A./temp +eye(row);
    G = C./diag(A);
    Xo = G;k= 1;
    Xn = Xo;

    while 1
        Xn(1) = B(1,:)*Xo+G(1),
        for i= 2:row
            Xn(i) = B(i,1:i-1)*Xn(1:i-1) + B(i,i:row)*Xo(i:row) + G(i),
        end
        rEX = norm((Xn - Xo)./Xo),
        FX = norm(A*Xn - C),
        if FX < delta
            break
        end
        Xo = Xn;
        k = k+1
    end
    end
    %c) loi goi ham
     %phuong phap lap: [a] = pplap([6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9],[9 1 -12 -12 5],10^(-3))
     %phuong phap seidel: [a] = ppSeidel([6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9],[9 1 -12 -12 5],10^(-3))

%Bai 5, giai he n phuong trinh n an
 %a) phuong lap lap
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
      rEx = norm((Xn-Xo)./Xo),
      fX = norm(A*Xn - C),
      if fX < delta
          break
      end
      Xo = Xn;
      k = k+1
  end
  end
  % vi du goi ham :[a] = pplap([5 1 1; 1 10 1; 1 1 20], [7,12,22], 10^(-3))
  %b) phuong phap seidel
    function[Xn] = ppSeidel(A,C,delta)
    [row,col] = size(A);
    temp = diag(A);
    for i=1:(row-1)
        temp = [temp diag(A)];
    end
    B = -A./temp +eye(row);
    G = C./diag(A);
    Xo = G;k= 1;
    Xn = Xo;

    while 1
        Xn(1) = B(1,:)*Xo+G(1),
        for i= 2:row
            Xn(i) = B(i,1:i-1)*Xn(1:i-1) + B(i,i:row)*Xo(i:row) + G(i),
        end
        rEX = norm((Xn - Xo)./Xo),
        FX = norm(A*Xn - C),
        if FX < delta
            break
        end
        Xo = Xn;
        k = k+1
    end
    end
    % vi du goi ham: [a] = pplap([5 1 1; 1 10 1; 1 1 20], [7,12,22], 10^(-3))
%chuong 6
    %bai 9
        function[yc]= ppbinhphuong(xx,yy,xc)
            N = length(xx);
            X = sum(xx);
            Y = sum(yy);
            XX = sum(xx.*xx);
            XY = sum(xx.*yy);
            syms a b
            [a,b] = solve(XX*a + X*b == XY, X*a + N*b == Y)
            syms x
            R = a*x +b;
            yc = subs(R,x,xc);
            ezplot(R,[xx(1) xx(end)])
            hold on, plot(xx,yy,'bo')
        end
        %bai9
        %a)ppbinhphuong([2 4 7 8.5 9.5 11], [2.2 4.2 6.8 8.1 9.7 10.5], 6)
        %b)ppbinhphuong([1 2.1 2.9 3.8 5 6.2],[3.021 4.219 5.018 5.986 7.139 8.138], 4.5)
        %c)ppbinhphuong([1 1.6 2.1 3 3.3 3.7 4.1 4.9 6.2], [1.1 2.2 3.5 4.9 7.2 7.8
        %7.9 8.5 10], 3.5)
     %bai10
     function[yc]= ppbinhphuong2(xx,yy,xc)
        N = length(xx);
        X = sum(xx);
        lY = sum(log(yy));
        XX = sum(xx.*xx);
        XlY = sum(xx.*log(yy));
        syms a b
        [a,b] = solve(XX*a + X*b == XlY, X*a + N*b == lY)
        syms x
        R = exp(b)*exp(a*x);
        yc = subs(R,x,xc),
        ezplot(R,[xx(1) xx(end)])
        hold on, plot(xx,yy,'bo')
     end
    %a)ppbinhphuong2([1.1 3.2 5.1 7.7 9.6 12.2], [3.1 29.9 65.7 100.4 195.7
    %300.4], 8.5)
    %b)ppbinhphuong2([2 4 7 8.5 9.5 11],[2.2 2.5 2.7 3.1 3.2 3.5],7.7)
    %c)ppbinhphuong2([3 3.4 4.1 4.3 4.7 5.3 5.3 6 6.4],[1.23 1.40 1.69 1.79
    %2.13 2.52 2.45 2.97 3.44],5)
%Chuong 7
%Bai 8
    function[df_3dg, df_3dc]= daoham3diem(xx,yy,df)
        df_3dc=(-3*yy(2)+4*yy(3)-yy(4))/(xx(4)-xx(2));
        rEdf_3dc=abs((df-df_3dc)/df)
        df_3dg=(-yy(1)+yy(3))/(xx(3)-xx(1)),
        rEdf_3dg=abs((df-df_3dg)/df);
    end
    %[a,b] = daoham3diem([0.9 1 1.1 1.2],[0.7833 0.8415 0.8912 0.9320],0.5403)
    %Bai 9
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
 %Chuong 8
    %Bai 7
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
    %bai 1
    % syms x y
    % fxy = x + y
    % viphanlap(fxy,0,0.4,1,0.001)
    %bai 2
    % syms x y
    % fxy = 2*x^2 + y
    % viphanlap(fxy,0,0.5,1,0.001)
   %Bai 9
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