clear   % Untuk clear variabel yang tersimpan di memori
clc     % Untuk clear console(command window)
        % Dilakukan untuk membuat console tetap bersih dan workspace yang efisien

% Skalar
a = 7;

% Vector Baris, Kolom, Matrix
b = [1 2 3 4 5];
c = [1; 2; 3; 4; 5];
d = [1 2; 3 4; 5 6];

% Transpose cara mengubah vektor baris menjadi vektor kolom
% dengan menggunakan b' dapat mengubah vektor baris menjadi vektor kolom

bt = b';
ct = c';
dt = d';

sum = b + ct;      % Penjumlahan Vektor
mul = dot(b, ct);  % Perkalian vektor

ab = [1 3 4];
ac = [6 7 8];
hasil = cross(ab , ac);

% Penggabungan 2 buah vektor, Concatenate
g = [b ab];
h = [b; c'];
i = [b; ab 7 8];