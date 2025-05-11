function X = Tugas3_662022016_Gauseidel(A, b, X0, N, tol)
%gauseid MenyelesaikanSPLAX =bmenggunakaniterasiGauss-Seidel.
 %
 %Input: A=matrikskoefisien darisistem
 % b=vektorkolomuntuknilaikonstantadarisistem
 % X0=penyelesaianawal
 % N=maksimumiterasi
 % tol=toleransikeakuratan
 %
 %Output:X=penyelesaiansistem
 if nargin <5, tol = 1e-6;end
 if nargin <4, N = 1000;end
 if nargin <3, X0 = zeros(length(b),1);end
 n = size(A,1);
 X = X0;
 k = 1; norma=1;
 while k <= N && norma > tol
     X(1)=(b(1)-A(1,2:n)*X(2:n))/A(1,1);%persamaan(4.4)
     for i = 2:n-1
         tmp = b(i,:)-A(i,1:i-1)*X(1:i-1)-A(i,i+1:n)*X(i+1:n);
         X(i)=tmp/A(i,i);%persamaan(4.3)
     end
     X(n) = (b(n,:)-A(n,1:n-1)*X(1:n-1))/A(n,n);%persamaan(4.4)
     norma = max(abs(X-X0));
     X0 = X;
 end
end