# Tutorial Matlab - 1
Author: Davidson  
Hari, tanggal : Senin, 18 November 2024

## Penjelasan Kode

### 1. Pembersihan Workspace
```matlab
clear   % Menghapus semua variabel dari memori
clc     % Membersihkan tampilan Command Window
```
Kedua perintah ini memastikan bahwa lingkungan kerja Anda bersih sebelum menjalankan kode, mencegah konflik variabel dari sesi sebelumnya.

### 2. Skalar
```matlab
a = 7;
```
Variabel `a` adalah skalar sederhana yang menyimpan angka `7`.

### 3. Vektor dan Matriks
- **Vektor Baris**: 
  ```matlab
  b = [1 2 3 4 5];
  ```
- **Vektor Kolom**: 
  ```matlab
  c = [1; 2; 3; 4; 5];
  ```
- **Matriks**:
  ```matlab
  d = [1 2; 3 4; 5 6];
  ```
`b` adalah vektor baris, `c` adalah vektor kolom, dan `d` adalah matriks 3x2.

### 4. Operasi Transpose
Transpose mengubah vektor baris menjadi vektor kolom dan sebaliknya.
```matlab
bt = b';
ct = c';
dt = d';
```
Tanda petik `'` digunakan untuk operasi transpose.

### 5. Operasi Matematika
- **Penjumlahan Vektor**:
  ```matlab
  sum = b + ct;
  ```
  Menjumlahkan elemen-elemen vektor `b` dan `ct`.

- **Perkalian Vektor (Dot Product)**:
  ```matlab
  mul = dot(b, ct);
  ```
  Menghitung hasil kali titik dari `b` dan `ct`.

### 6. Perkalian Silang (Cross Product)
```matlab
ab = [1 3 4];
ac = [6 7 8];
hasil = cross(ab, ac);
```
`cross` digunakan untuk menghitung perkalian silang dua vektor `ab` dan `ac`.

### 7. Penggabungan Vektor (Concatenate)
```matlab
g = [b ab];
h = [b; c'];
i = [b; ab 7 8];
```
- `g`: Menggabungkan `b` dan `ab` menjadi satu vektor baris.
- `h`: Menggabungkan `b` dengan transpose dari `c` secara vertikal.
- `i`: Menggabungkan `b` dengan elemen-elemen `ab`, ditambah `7` dan `8`.

---

## Daftar Pustaka
- [MathWorks Documentation](https://www.mathworks.com/help/matlab/)
- [MATLAB Programming for Engineers by Stephen J. Chapman](https://www.amazon.com/MATLAB-Programming-Engineers-Stephen-Chapman/dp/0495668079)
- [MATLAB and Simulink Training Resources](https://www.mathworks.com/services/training.html)