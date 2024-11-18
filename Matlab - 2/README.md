# Tutorial Matlab - 2
Author: Davidson  
Hari, Tanggal : Senin, 18 November 2024 

## Penjelasan Kode
### 1. Pembersihan Workspace
```matlab
clear   % Menghapus semua variabel dari memori
clc     % Membersihkan tampilan Command Window
```
Kedua perintah ini digunakan untuk memulai dengan lingkungan kerja yang bersih.

### 2. Definisi Matriks
```matlab
a = [1 2; 3 4];
b = [5 6; 7 8];
```
Matriks `a` dan `b` didefinisikan sebagai matriks 2x2.

### 3. Perkalian Matriks
```matlab
c = a * b;
```
Perkalian matriks `a` dan `b` menggunakan aturan perkalian matriks. Hasil `c` adalah matriks 2x2.

### 4. Kuadrat Matriks
```matlab
d = a^2;
```
Operasi `a^2` menghitung kuadrat dari matriks `a`, yaitu `a * a`. Perlu diingat, ini bukan operasi elemen-per-elemen.

### 5. Perkalian Elemen-per-Elemen
```matlab
e = a .* b;
```
`.*` digunakan untuk melakukan perkalian elemen-per-elemen dari `a` dan `b`. Hasilnya adalah matriks dengan elemen-elemen hasil kali yang sesuai.

### 6. Pembagian Matriks Kiri (Matrix Left Division)
```matlab
x = a \ c;
```
Operasi `a \ c` menyelesaikan persamaan `a * x = c` dengan cara menghitung `x` sebagai `inv(a) * c`. Hasil `x` adalah solusi dalam bentuk double.

### 7. Pembagian Matriks Kanan (Matrix Right Division)
```matlab
y = c / b;
```
Operasi `c / b` menyelesaikan persamaan `y * b = c` dengan menghitung `y` sebagai `c * inv(b)`. Ini adalah pendekatan untuk mencari solusi matriks menggunakan pembagian kanan.

---
## Daftar Pustaka
- [MathWorks Documentation](https://www.mathworks.com/help/matlab/matlab_prog/array-vs-matrix-operations.html)
- [MATLAB Matrix Computation Guide](https://www.mathworks.com/help/matlab/matrix-computation.html)
- [MATLAB Programming for Engineers by Stephen J. Chapman](https://www.amazon.com/MATLAB-Programming-Engineers-Stephen-Chapman/dp/0495668079)