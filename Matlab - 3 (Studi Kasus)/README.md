# Studi Kasus: Penyelesaian Sistem Persamaan Linear Menggunakan Matlab

Author: Davidson  
Hari, Tanggal: Senin, 18 November 2024

## Deskripsi
Studi kasus ini membahas penyelesaian sistem persamaan linear menggunakan Matlab dengan pendekatan matrix left division. Sistem persamaan yang dianalisis adalah sebagai berikut:

1. \( 2x + 3y = 10 \)
2. \( 5x + 9y = 15 \)

Pendekatan matrix left division (`\`) digunakan untuk menyelesaikan sistem ini dengan cepat dan efisien.

---

## Penjelasan Kode

### 1. Pembersihan Workspace
```matlab
clear   % Menghapus semua variabel dari memori
clc     % Membersihkan tampilan Command Window
```
Perintah ini memastikan bahwa memori dan layar Command Window bersih sebelum menjalankan kode, menghindari hasil yang tidak diinginkan dari variabel lama.

### 2. Definisi Matriks dan Vektor Konstanta
```matlab
a = [2 3; 5 9];  % Matriks koefisien
c = [10; 15];    % Vektor konstanta
```
- **Matriks Koefisien `a`**: Dibentuk dari koefisien persamaan linear.
  - Baris pertama: \( 2x + 3y \) → [2, 3]
  - Baris kedua: \( 5x + 9y \) → [5, 9]
- **Vektor Konstanta `c`**: Berisi nilai di sebelah kanan tanda sama dengan dalam sistem persamaan, yaitu [10; 15].

### 3. Penyelesaian Sistem Persamaan
```matlab
x = a\c;  % Menghitung solusi x menggunakan matrix left division
```
- **Matrix Left Division (`\`)**: Digunakan untuk menyelesaikan persamaan \( a \cdot x = c \). Matlab secara internal menghitung solusi dengan metode eliminasi Gauss atau metode dekomposisi matriks, tergantung pada bentuk matriks `a`.
- **Hasil `x`**: Berisi solusi dalam bentuk vektor [x; y].

### 4. Ekstraksi Solusi
```matlab
hasilX = x(1);  % Solusi untuk x
hasilY = x(2);  % Solusi untuk y
```
Solusi `x` dan `y` diekstrak dari vektor hasil `x`. `hasilX` mewakili nilai `x`, dan `hasilY` mewakili nilai `y`.

### 5. Pembuktian Solusi
Untuk memverifikasi kebenaran solusi, kita masukkan kembali nilai `x` dan `y` ke dalam persamaan awal.
```matlab
a(1,1) * x + a(1,2) * hasilY  % Verifikasi untuk persamaan pertama
a(2,1) * x + a(2,2) * hasilY  % Verifikasi untuk persamaan kedua
```
- **Verifikasi Persamaan 1**: Menghitung \( 2x + 3y \) dengan nilai `x` dan `y` yang diperoleh, seharusnya hasilnya adalah 10.
- **Verifikasi Persamaan 2**: Menghitung \( 5x + 9y \) dengan nilai `x` dan `y` yang diperoleh, seharusnya hasilnya adalah 15.

### 6. Penjelasan Matrix Left Division
- **Matrix Left Division (`\`)**: Metode ini adalah cara yang sangat efisien di Matlab untuk menyelesaikan sistem persamaan linear. Dibandingkan dengan cara manual menggunakan invers matriks, `\` lebih cepat dan stabil secara numerik, terutama untuk sistem besar.

---

## Output
- **Nilai `x` (hasilX)**: Nilai x yang memenuhi sistem persamaan.
- **Nilai `y` (hasilY)**: Nilai y yang memenuhi sistem persamaan.

### Hasil Verifikasi
- Evaluasi ulang persamaan memberikan hasil yang sesuai dengan nilai konstanta, membuktikan bahwa solusi yang diperoleh benar.

---

## Daftar Pustaka
- [MathWorks Documentation on Solving Systems of Linear Equations](https://www.mathworks.com/help/matlab/ref/mldivide.html)
- [Linear Algebra and Its Applications by Gilbert Strang](https://www.amazon.com/Linear-Algebra-Its-Applications-5th/dp/0030105676)
- [MATLAB for Engineers by Holly Moore](https://www.amazon.com/MATLAB-Engineers-Holly-Moore/dp/0134589648)