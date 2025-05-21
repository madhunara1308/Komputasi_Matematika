% % KUPU-KUPU
% t = linspace(0, 12*pi, 1000);
% x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% figure('Color',[0.9 0.95 1])
% fill(x, y, 'm')
% axis equal off
% title('Kupu-Kupu', 'FontSize', 14)

%% 3D Permukaan Gelombang
% [x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
% z = sin(sqrt(x.^2 + y.^2));
% surf(x, y, z);
% title('3D Permukaan Gelombang');
% shading interp; colormap jet; colorbar;

%% 3D Heliks Spira
% t = linspace(0, 10*pi, 1000);
% x = cos(t); y = sin(t); z = t;
% plot3(x, y, z, 'c', 'LineWidth', 2);
% grid on;
% title('3D Heliks Spiral');

%% MESH ARTISTIK
% [x, y] = meshgrid(-8:0.5:8, -8:0.5:8);
% z = sin(sqrt(x.^2 + y.^2));
% mesh(x, y, z);
% colormap winter;
% title('3D Mesh Artistik');

%%  Gelombang 3D
% [x, y] = meshgrid(-2:0.1:2);
% z = sin(5*(x.^2 + y.^2))./(x.^2 + y.^2 + 0.1);
% surf(x, y, z);
% shading interp; colormap cool; colorbar;
% title('Gelombang');

% % Vektor Medan Magnet
% [x, y] = meshgrid(-2:0.2:2, -2:0.2:2);
% u = -y ./ (x.^2 + y.^2);
% v = x ./ (x.^2 + y.^2);
% quiver(x, y, u, v); axis equal;
% title('Vektor Medan Magnet');

%% Fraktal Spiral Kontur
% [x, y] = meshgrid(-2:0.01:2);
% z = sin(10*(x.^2 + y.^2));
% contour(x, y, z, 30); title('Fraktal Spiral Kontur');

%% Permukaan Kupu-Kupu 3D
% [x, y] = meshgrid(-2*pi:0.1:2*pi);
% r = exp(cos(x) + cos(y));
% z = sin(sqrt(x.^2 + y.^2));
% surf(x, y, z.*r);
% shading interp; colormap(jet); title('Permukaan Kupu-Kupu 3D');

%% Disco Ball Polygon Bergerak
% theta = linspace(0, 2*pi, 7);
% for k = 1:50
%     clf;
%     r = 1 + 0.2*sin(k/5);
%     x = r * cos(theta + k*0.1);
%     y = r * sin(theta + k*0.1);
%     fill(x, y, rand(1,3));
%     axis equal off; xlim([-2 2]); ylim([-2 2]);
%     title('Disco Ball Polygon Spin');
%     pause(0.05);
% end

%% Jaring Laba-Laba Simetris
% theta = linspace(0, 2*pi, 100);
% for r = 0.1:0.1:1
%     plot(r*cos(theta), r*sin(theta), 'k'); hold on;
% end
% for i = 1:12
%     ang = 2*pi*i/12;
%     plot([0 cos(ang)], [0 sin(ang)], 'k');
% end
% axis equal off; title('Jaring Laba-Laba Simetris');

%% %Bunga Mawar ver.2
% n = 800;
% A = 1.995653;
% B = 1.27689;
% C = 8;
% r = linspace(0,1,n);
% theta = linspace(-2,20*pi,n);
% [R, THETA] = ndgrid(r, theta);
% 
% petalNum = 3.6;
% x = 1 - (1/2)*((5/4)*(1-mod (petalNum * THETA, 2*pi)/pi).^2 - 1/4).^2;
% phi = (pi/2)*exp(-THETA/(C*pi));
% y = A*(R.^2).*(B*R - 1).^2.*sin(phi);
% R2 = x.*(R.*sin(phi) + y.*cos(phi));
% X = R2.*sin(THETA);
% Y = R2.*cos(THETA);
% Z= x.*(R.*cos(phi) - y.*sin(phi));
% 
% red_map = linspace (1,0.25, 10)';
% red_map(:,2)= 0;
% red_map(:,3)= 0;
% clf
% surf(X,Y,Z,'LineStyle','none')
% view([-40.50 42.00])
% colormap(red_map)

%% Animasi Burung Hantu
% function plot_owl()
%     % Parameter dasar
%     theta = linspace(0, 2*pi, 1000);
%     t = linspace(-pi, pi, 1000);
%     
%     r_head = 1 + 0.1*cos(5*theta);  % Efek bergelombang
%     x_head = r_head .* cos(theta);
%     y_head = r_head .* sin(theta) + 1.5;
%     
%     x_eye_left = -0.4 + 0.3*cos(theta);
%     y_eye_left = 1.6 + 0.4*sin(theta);
%     x_eye_right = 0.4 + 0.3*cos(theta);
%     y_eye_right = 1.6 + 0.4*sin(theta);
%     
%     x_pupil_left = -0.4 + 0.1*cos(theta);
%     y_pupil_left = 1.6 + 0.1*sin(theta);
%     x_pupil_right = 0.4 + 0.1*cos(theta);
%     y_pupil_right = 1.6 + 0.1*sin(theta);
%     
%     x_beak = [-0.1 0 0.1];
%     y_beak = [1.3 1.45 1.3];
%     
%     x_body = 0.8*cos(theta);
%     y_body = 0.5*sin(theta) - 0.2;
%     
%     x_wing_left = -0.5 + 0.7*cos(t).^3;
%     y_wing_left = 0.3*sin(t) - 0.2;
%     x_wing_right = 0.5 - 0.7*cos(t).^3;
%     y_wing_right = 0.3*sin(t) - 0.2;
%     
%     x_feet = [-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4];
%     y_feet = [-0.7 -0.8 -0.7 -0.8 -0.7 -0.8 -0.7 -0.8 -0.7];
%     
%     % Plot semua komponen
%     figure('Color', 'white');
%     hold on;
%     axis equal;
%     axis off;
%     
%     fill(x_head, y_head, [0.1 0.5 0.1]); % Hijau tua
%     fill(x_body, y_body, [0.2 0.6 0.2]); % Hijau sedang
%     
%     fill(x_wing_left, y_wing_left, [0.2 0.7 0.2]);  % Sayap hijau lebih cerah
%     fill(x_wing_right, y_wing_right, [0.2 0.7 0.2]);
%     
%     fill(x_eye_left, y_eye_left, 'white');
%     fill(x_eye_right, y_eye_right, 'white');
%     fill(x_pupil_left, y_pupil_left, 'black');
%     fill(x_pupil_right, y_pupil_right, 'black');
%     
%     fill(x_beak, y_beak, [1 0.8 0.2]); % Kuning
%     plot(x_feet, y_feet, 'LineWidth', 3, 'Color', [1 0.7 0]);
% 
%     plot(-0.4, 1.6, 'o', 'MarkerSize', 8, 'Color', 'white'); % Pantulan mata
%     plot(0.4, 1.6, 'o', 'MarkerSize', 8, 'Color', 'white');
%     
%     plot(0, 1.3 + 0.05*sin(20*theta), 'k', 'LineWidth', 1); % Garis paruh
%     
%     title('Animasi Burung Hantu', 'FontSize', 14);
%     hold off;
% end



%% Gunung Vulkanik 3D
% [x, y] = meshgrid(-5:0.1:5);
% r = sqrt(x.^2 + y.^2);
% z = exp(-0.2*r.^2).*cos(5*r);
% surf(x, y, z); colormap hot;
% shading interp; title('Gunung Vulkanik 3D');

%%  Kupu-Kupu
% t = linspace(0, 24*pi, 1000);
% x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% figure('Color',[0.9 0.9 1]);
% plot(x, y, 'm', 'LineWidth', 2);
% axis equal off; title('Kupu-Kupu');


%% Cantik
% [x, y] = meshgrid(-2:0.1:2);
% z = sin(5*(x.^2 + y.^2))./(x.^2 + y.^2 + 0.2);
% figure('Color',[1 0.95 1]);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(pink); title('Cantik');

% % Pegunungan 3D
% [x, y] = meshgrid(-10:0.5:10);
% z = exp(-0.01*(x.^2 + y.^2)) .* sin(0.5*x) .* cos(0.5*y);
% figure('Color',[0.85 1 1]);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(winter); view(30, 40);
% title(' Pegunungan 3D');

%% Pohon
% 
% function fractaltree
%     figure;
%     hold on;
%     axis equal;
%     axis off;
%     title('Pohon Lebat');
%     tree(0, 0, pi/2, 0.8, 10);
%     
%     function tree(x, y, angle, length, depth)
%         if depth > 0
%             x_end = x + length*cos(angle);
%             y_end = y + length*sin(angle);
%             
%             plot([x x_end], [y y_end], 'Color', [0.4 0.2 0.1], 'LineWidth', depth*0.5);
%             
%             % Cabang kiri dan kanan
%             tree(x_end, y_end, angle + pi/6, length*0.7, depth-1);
%             tree(x_end, y_end, angle - pi/6, length*0.7, depth-1);
%             
%             % Tambahkan daun di ujung cabang
%             if depth == 1
%                 plot(x_end, y_end, 'o', 'MarkerSize', 5, 'MarkerFaceColor', [0 0.6 0], 'MarkerEdgeColor', 'none');
%             end
%         end
%     end
% end
%% Gunung Meletus dengan Lava
% [x, y] = meshgrid(-5:0.1:5);
% r = sqrt(x.^2 + y.^2);
% z = exp(-0.2*r.^2).*cos(5*r);
% lava = z + 0.5*rand(size(z));
% figure('Color',[0.1 0.1 0.1]);
% surf(x, y, lava); shading interp;
% colormap(hot); title(' Gunung Meletus');

% % Ombak Bergelombang 3D
% [x, y] = meshgrid(-10:0.2:10);
% z = sin(sqrt(x.^2 + y.^2) - 2*atan2(y, x));
% figure('Color',[0.9 1 1]);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(cool); title(' Ombak Bergelombang 3D');

%% Kebun Bunga
% figure('Color','white');
% axis equal; hold on;
% view(45,30);
% title('Kebun Bunga 3D','FontSize',14,'FontWeight','bold');
% 
% [X,Y] = meshgrid(-5:0.5:5,-5:0.5:5);
% Z = -0.1*ones(size(X));
% surf(X,Y,Z,'FaceColor',[0.6 0.4 0.2],'EdgeColor','none');
% 
% for i = 1:20
%     x0 = 10*rand-5; y0 = 10*rand-5;
%     
%     plot3([x0 x0],[y0 y0],[-0.1 0.2],'g','LineWidth',2);
%     
%     % Kelopak bunga (parametric)
%     theta = linspace(0,2*pi,20);
%     r = 0.3 + 0.1*rand;
%     x = x0 + r*cos(theta);
%     y = y0 + r*sin(theta);
%     z = 0.2 + 0.05*rand(size(theta));
%     patch(x,y,z,rand(1,3),'EdgeColor','none');
%     
%     scatter3(x0,y0,0.25,50,[0.9 0.7 0],'filled');
% end

%% - Butterfly Wings
% figure('Color',[1 0.95 1]);
% t = linspace(0,2*pi,1000);
% x = sin(t).*(exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% y = cos(t).*(exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% fill(x,y,[1 0.5 0.8]);
% title('Butterfly Wings'); axis equal off;


%% Crystal Cave
% figure('Color',[0.95 0.95 1]);
% [x,y,z] = sphere(80);
% r = 1 + 0.3*sin(6*x).*cos(6*y);
% x = x .* r; y = y .* r; z = z .* r;
% surf(x,y,z,'EdgeColor','none');
% colormap(cool); lighting phong; camlight;
% title('Crystal Cave'); axis off equal;


%% Siluet Kota
% x = 0:10;
% y = randi([2 10], 1, 11);
% figure('Color',[1 0.6 0.3]);
% bar(x, y, 1, 'k');
% xlim([-1 11]); ylim([0 12]);
% axis off; title(' Siluet Kota');\

%% Rose Flower
% figure('Color',[1 0.95 1]);
% t = linspace(0,2*pi,1000);
% r = 1 - sin(4*t);
% x = r.*cos(t); y = r.*sin(t);
% fill(x,y,[1 0.2 0.5],'EdgeColor','none');
% title('Rose Flower'); axis equal off;


%%  Flower Pot with Bloom
% figure('Color',[1 1 0.95]);
% t = linspace(0,2*pi,100);
% x = cos(t); y = sin(t);
% for i=1:6
%     fill(0.5*x + cos(i*pi/3), 0.5*y + sin(i*pi/3), [1 0.3 0.5]); hold on;
% end
% fill([-0.3 0.3 0],[-2 -2 -0.5],[0.4 0.2 0]); % pot
% fill([-0.05 0.05 0.05 -0.05],[0 -0 1.5 1.5],[0.2 0.8 0.2]); % stem
% title('Flower in Pot'); axis equal off;

%% ANIMASI RUMAH
% figure('Color',[0.85 1 1]);
% fill([-1 1 1 -1],[-1 -1 1 1],[1 0.9 0.6]); hold on; % main house
% fill([-1.2 0 1.2],[1 2 1],[0.8 0.3 0]); % roof
% fill([-0.7 -0.4 -0.4 -0.7],[0.2 0.2 0.6 0.6],[0.5 0.7 1]);
% fill([0.4 0.7 0.7 0.4],[0.2 0.2 0.6 0.6],[0.5 0.7 1]);
% title('Animasi Rumah'); axis equal off;
%% - Sunflower Pattern
% figure('Color',[1 1 0.9]);
% n = 500; g = (sqrt(5)+1)/2 - 1;
% theta = 2*pi*g*(1:n);
% r = sqrt(1:n);
% x = r.*cos(theta); y = r.*sin(theta);
% scatter(x,y,30,y,'filled'); colormap(summer);
% title('Sunflower'); axis equal off;

%% VISUAL 19 - Energy Sphere
% figure('Color',[0.95 0.95 1]);
% [x,y,z] = sphere(150);
% f = sin(10*(x.^2 + y.^2 + z.^2));
% surf(x,y,z,f,'EdgeColor','none');
% colormap(parula); camlight; lighting phong;
% title('Energy Sphere'); axis off equal;

%% Bola coklat
% figure('Color',[1 0.95 0.9]); hold on;
% % Bun top
% [xb,yb,zb] = sphere(50); surf(xb, yb, 0.3*zb+0.8,'FaceColor',[1 0.85 0.6],'EdgeColor','none');
% % Patty
% [xp,yp,zp] = cylinder(0.6,50); surf(xp,yp,0.2*zp+0.4,'FaceColor',[0.4 0.2 0],'EdgeColor','none');
% % Bun bottom
% surf(xb, yb, -0.3*zb,'FaceColor',[1 0.85 0.6],'EdgeColor','none');
% camlight; lighting phong; title('Bola Coklat '); axis equal off;

%% Spiral Galaxy
% figure('Color','k');
% t = linspace(0,20*pi,5000);
% r = linspace(0,10,5000);
% x = r.*cos(t); y = r.*sin(t); z = 0.2*t.*sin(t);
% scatter3(x,y,z,1,linspace(0,1,5000),'filled');
% colormap(hot); view(30,15);
% title('Spiral Galaxy'); axis off;

%% Flower Petal Surface
% figure('Color',[1 0.9 1]);
% [u,v] = meshgrid(linspace(0,2*pi,100),linspace(0,pi,50));
% x = sin(u).*sin(v);
% y = cos(u).*sin(v);
% z = cos(v) + 0.3*sin(5*u);
% surf(x,y,z,'EdgeColor','none');
% colormap(jet); camlight; lighting gouraud;
% title('Petal Surface'); axis off;

%% Spiral Artistik
% theta = linspace(0, 10*pi, 1000);
% r = linspace(0, 5, 1000);
% x = r .* cos(theta);
% y = r .* sin(theta);
% plot(x, y, 'm', 'LineWidth', 2);
% axis equal;
% title('Spiral Artistik');

%% Fraktal Spiral Warna
% theta = linspace(0, 20*pi, 1000);
% r = linspace(0, 5, 1000);
% x = r .* cos(theta);
% y = r .* sin(theta);
% scatter(x, y, 10, theta, 'filled');
% axis equal;
% title('Fraktal Spiral Warna');
% colorbar;

%% Scatter Warna Abstrak
% x = randn(1, 500);
% y = randn(1, 500);
% c = x.^2 + y.^2;
% scatter(x, y, 30, c, 'filled');
% title('Scatter Warna Abstrak');
% colorbar;

%% Kontur Abstrak Panas
% % [x, y] = meshgrid(-3:0.05:3);
% % z = sin(x.^2 + y.^2);
% % contourf(x, y, z, 40);
% % colormap hot;
% % title('Kontur Abstrak Panas');

%% Emoji Senyum
% % Background figure
% figure('Color', [0.8 0.8 0.8]); % Latar abu-abu lembut
% 
% % Wajah
% theta = linspace(0, 2*pi, 100);
% x = cos(theta);
% y = sin(theta);
% fill(x, y, [1 1 0], 'EdgeColor', 'k'); % Wajah kuning
% 
% hold on;
% 
% % Mata kiri dan kanan
% plot(-0.3, 0.4, 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'k'); % Mata kiri
% plot(0.3, 0.4, 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'k');  % Mata kanan
% 
% % Senyum (pakai arc dari parabola biar lengkung pas)
% t = linspace(-0.5, 0.5, 100);
% smile_x = t;
% smile_y = -0.4 + 0.5*(t.^2 - 0.25); % parabola terbalik
% plot(smile_x, smile_y, 'k', 'LineWidth', 2); % Senyum
% 
% axis equal off;
% title('Emoji Senyum', 'FontSize', 14);

%% EMOJI SEDIH
% % Buat figure dan latar belakang
% figure('Color', [0.85 0.85 0.85]); % Latar abu muda
% 
% % Gambar wajah bundar
% theta = linspace(0, 2*pi, 200);
% x = cos(theta);
% y = sin(theta);
% fill(x, y, [1 1 0], 'EdgeColor', 'k'); % Wajah kuning
% 
% hold on;
% 
% % Mata
% plot(-0.3, 0.4, 'ko', 'MarkerSize', 12, 'MarkerFaceColor', 'k'); % Mata kiri
% plot(0.3, 0.4, 'ko', 'MarkerSize', 12, 'MarkerFaceColor', 'k');  % Mata kanan
% 
% % Mulut: buat busur setengah lingkaran DI BAWAH
% t = linspace(pi/6, 5*pi/6, 100);  % Setengah bawah
% r = 0.5; % Radius senyum
% smile_x = r * cos(t);
% smile_y = r * sin(t) - 0.3; % Turunkan posisinya
% 
% plot(smile_x, smile_y, 'k', 'LineWidth', 4); % Mulut
% 
% % Estetika
% axis equal off;
% title('Emoji Sedih', 'FontSize', 16, 'FontWeight', 'bold');

%% Bintang
% % t = linspace(0, 2*pi*10, 5000);
% % R = 5; r = 3; d = 5;
% % 
% % x = (R - r)*cos(t) + d*cos((R - r)/r * t);
% % y = (R - r)*sin(t) - d*sin((R - r)/r * t);
% % 
% % plot(x, y, 'k', 'LineWidth', 1.5);
% % axis equal;
% % grid on;
% % title('STAR');
% 
% %% Kurva bunga Mawar
% % Parameter
% theta = linspace(0, 24*pi, 5000);  % Sudut (semakin besar, semakin kompleks)
% k = 7;                             % Jumlah kelopak kurva (angka ganjil: kelopak = k)
% 
% % Fungsi Rose Curve
% r = sin(k * theta);
% 
% % Konversi ke kartesian
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% % Plotting
% figure;
% plot(x, y, 'r', 'LineWidth', 1.5);
% axis equal;
% grid on;
% title(['? Rose Curve Artistik dengan k = ' num2str(k)]);
% set(gca, 'Color', 'k');             % Latar belakang hitam
% set(gcf, 'Color', 'k');             % Warna figure


%% Abstract Coral Reef
% figure('Color',[0.9 1 1]);
% for k=1:50
%     [x,y,z] = cylinder(rand*0.1 + 0.05);
%     z = z*(0.5+rand);
%     x = x + rand*2 - 1;
%     y = y + rand*2 - 1;
%     surf(x,y,z,'FaceColor',rand(1,3),'EdgeColor','none');
%     hold on;
% end
% axis equal off; camlight; lighting phong;
% title('Abstract Coral Structure');


