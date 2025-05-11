% Matriks koefisien A dan vektor b
A = [10, -1, 2, 0;
     -1, 11, -1, 3;
     2, -1, 10, -1;
     0, 3, -1, 8];

b = [6; 25; 11; 15];

% Jacobi
[x_jacobi] = Tugas3_662022016_Jacobi(A, b);

% Gauss-Seidel
[x_gausseidel] = Tugas3_662022016_Gauseidel(A, b);

%jacobi
disp('Akar Hampiran Jacobi = ')
disp(x_jacobi)

%gauss-seidel
disp('Akar Hampiran Gauss-Seidel = ')
disp(x_gausseidel)

% Integral 2x^3 dari 0 ke 1
f = @(x) 2*x.^3;
hasil_trapesium = Tugas3_662022016_Trapesium(f, [0 1], 500);

disp(['Hasil integral dengan metode trapesium 2x^3 dari 0 ke 1: ', num2str(hasil_trapesium)]);
disp('')

% Menggunakan berbagai metode Riemann
Rieman_Kiri = Tugas3_662022016_Rieman(f, 0, 1, 500, 'kiri');
Rieman_Kanan = Tugas3_662022016_Rieman(f, 0, 1, 500, 'kanan');
Rieman_Tengah = Tugas3_662022016_Rieman(f, 0, 1, 500, 'tengah');

% Bandingkan dengan hasil eksak (0.5 untuk integral 2x^3 dari 0 ke 1)
disp(['Error metode kiri: ', num2str(abs(0.5 - Rieman_Kiri))]);
disp(['Error metode kanan: ', num2str(abs(0.5 - Rieman_Kanan))]);
disp(['Error metode tengah: ', num2str(abs(0.5 - Rieman_Tengah))]);

