clear
clc

% Matrix
a = [1 2; 3 4];
b = [5 6; 7 8];

% Perkalian Matrix
c = a * b;

% Kuadrat Matrix
d = a^2;

% Perkalian korespondensi satu satu
e = a.*b;

% a * x = c (kita ingin tahu kalau `x` itu apa? menggunakan `matrix left devision`

x = a\c;             % ( a invers * c) oleh karena itu nilainya menjadi double

% x * b = c (kita ingin tahu kalau `x` itu apa? menggunakan `matrix right devision`
y = c/b;