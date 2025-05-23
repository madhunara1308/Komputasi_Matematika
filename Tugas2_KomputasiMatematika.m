% Nested if
% Menentukan kelulusan berdasarkan nilai teori dan praktik

% nilai_teori = input('Masukkan nilai ujian teori (0-100): ');
% nilai_praktik = input('Masukkan nilai ujian praktik (0-100): ');
% 
% if nilai_teori >= 0 && nilai_teori <= 100 && nilai_praktik >= 0 && nilai_praktik <= 100
%     if nilai_teori >= 70
%         if nilai_praktik >= 70
%             disp('Lulus ujian teori dan praktik');
%         else
%             disp('Lulus teori, tapi gagal praktik');
%         end
%     else
%         if nilai_praktik >= 70
%             disp('Gagal teori, tapi lulus praktik');
%         else
%             disp('Gagal ujian teori dan praktik');
%         end
%     end
% else 
%     disp('Nilai tidak valid. Harus antara 0?dan?100.');
% end

% Loop
% Menentukan kelulusan berdasarkan nilai teori dan praktik 
% Input nilai teori dengan validasi
nilai_teori = -1;
while nilai_teori < 0 || nilai_teori > 100
    nilai_teori = input('Masukkan nilai ujian teori (0-100): ');
    if nilai_teori < 0 || nilai_teori > 100
        disp('Nilai teori tidak valid. Harus antara 0 dan 100.');
    end
end

% Input nilai praktik dengan validasi
nilai_praktik = -1;
while nilai_praktik < 0 || nilai_praktik > 100
    nilai_praktik = input('Masukkan nilai ujian praktik (0-100): ');
    if nilai_praktik < 0 || nilai_praktik > 100
        disp('Nilai praktik tidak valid. Harus antara 0 dan 100.');
    end
end

% Penentuan kelulusan
if nilai_teori >= 70
    if nilai_praktik >= 70
        disp('Lulus ujian teori dan praktik');
    else
        disp('Lulus teori, tapi gagal praktik');
    end
else
    if nilai_praktik >= 70
        disp('Gagal teori, tapi lulus praktik');
    else
        disp('Gagal ujian teori dan praktik');
    end
end




