clear
clc

% Soal : 1) 2x + 3y = 10
%           5x + 9y = 15

% Jawab Soal 1
a = [2 3; 5 9];
c = [10; 15];

% Matrix left devision (a * x = c)
x = a\c;

% Hasil dari x
hasilX = x(1);
hasilY = x(2);

% Pembuktian
a(1,1) * x + a(1,2) * hasilY
a(2,1) * x + a(2,2) * hasilY