% % Definisikan fungsi
% f = inline(' x^2-3', 'x' );
% 
% %interval [1,2]
% X = [1 2];
% 
% % Panggil fungsi bagi dua
% [x, galat] = bagidua( f, X);
% 
% disp(x)
% disp(galat)

% Definisikan fungsi
f = inline(' x^2-3', 'x' );

%interval [1,2]
X = [1 2];

% Panggil fungsi bagi dua
[x, galat] = PosisiPalsu( f, X);

disp ('akar hampiran= ')
disp(x)
disp ( ' galat = ')
disp(galat)

