function X = Tugas3_662022016_Jacobi(A, b, X0, N, tol)
% % Tugas4_662022016_Jacobi
% Solusi Sistem Persamaan Linear AX = b menggunakan Iterasi Jacobi
%
% Input:
%   A   : Matriks koefisien (n x n)
%   b   : Vektor konstanta (n x 1)
%   X0  : Tebakan awal solusi (default: zeros(n,1))
%   N   : Maksimum iterasi (default: 1000)
%   tol : Toleransi error (default: 1e-6)
% Output:
%   X   : Solusi aproksimasi (n x 1)

% Set nilai default jika input tidak lengkap
if nargin < 5, tol = 1e-6; end
if nargin < 4, N = 1000; end
if nargin < 3, X0 = zeros(length(b),1); end

n = size(A,1);  % Ukuran matriks
X = X0;         % Inisialisasi solusi
k = 1;          % Counter iterasi
err = 1;        % Inisialisasi error

while k <= N && err > tol
    % Hitung komponen pertama (i=1)
    X(1) = (b(1) - A(1,2:n)*X0(2:n)) / A(1,1);
    
    % Hitung komponen tengah (i=2 sampai n-1)
    for i = 2:n-1
        X(i) = (b(i) - A(i,1:i-1)*X0(1:i-1) - A(i,i+1:n)*X0(i+1:n)) / A(i,i);
    end
    
    % Hitung komponen terakhir (i=n)
    X(n) = (b(n) - A(n,1:n-1)*X0(1:n-1)) / A(n,n);
    
    % Update error dan tebakan awal
    err = max(abs(X - X0));  % Hitung norma infinit
    X0 = X;                  % Simpan solusi saat ini
    k = k + 1;               % Increment counter
end
end