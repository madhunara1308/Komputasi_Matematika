function Tn = Tugas3_662022016_Trapesium(f, x, n)
% TRAPESIUM Menghitung perkiraan integral numerik dengan metode trapesium
%
% Input:
%   f  = fungsi integrand (handle fungsi)
%   x  = vektor [a b] sebagai batas integral
%   n  = banyaknya pembagian subinterval (bilangan bulat positif)
%
% Output:
%   Tn = hasil aproksimasi integral numerik

% Pemeriksaan masukan
if numel(x) ~= 2
    error('Input x harus berupa vektor 2 elemen [a b]');
end
if n <= 0 || rem(n,1) ~= 0
    error('n harus bilangan bulat positif');
end

a = x(1);
b = x(2);
h = (b - a)/n;  % Panjang tiap subinterval

% Membuat titik-titik partisi
xvek = linspace(a, b, n+1);  % n+1 titik menghasilkan n subinterval
yvek = f(xvek);             % Nilai fungsi di titik partisi

% Perhitungan integral metode trapesium
Tn = (h/2) * (yvek(1) + 2*sum(yvek(2:n)) + yvek(n+1));
end