# 📌 Praktikum 6 - Spatial Indexing dan Optimasi Query
**Mata Kuliah: Sistem Informasi Geografis (SIG)**  
Nama: Nabila Yuliana
NIM: 123140099

---

## 📖 Deskripsi
Praktikum ini bertujuan untuk memahami konsep **spatial indexing** dan **optimasi query spasial** menggunakan PostgreSQL dan PostGIS.  

Kegiatan yang dilakukan meliputi pengujian performa query, pembuatan spatial index, serta optimasi query untuk meningkatkan efisiensi eksekusi pada data spasial.

---

## 🗂️ Dataset
Dataset yang digunakan terdiri dari tiga jenis data spasial:

- **Wilayah (Polygon)** → merepresentasikan batas wilayah administratif  
- **Jalan (LineString)** → merepresentasikan jaringan jalan  
- **Fasilitas Publik (Point)** → merepresentasikan lokasi fasilitas umum  

Data yang digunakan merupakan data existing dan tidak dilakukan perubahan struktur maupun isi.

---

## ⚙️ Teknologi yang Digunakan
- PostgreSQL  
- PostGIS  
- pgAdmin 4  

---

## 🚀 Tahapan Praktikum

### 1. Pengujian Awal (Baseline)
Dilakukan pengujian performa query tanpa menggunakan index.  

Hasil menunjukkan bahwa database menggunakan **Sequential Scan (Seq Scan)**, yaitu membaca seluruh data pada tabel, sehingga performa belum optimal.

---

### 2. Pembuatan Spatial Index
Dilakukan pembuatan spatial index menggunakan metode **GiST (Generalized Search Tree)** pada seluruh tabel.

Tujuan penggunaan index:
- Mempercepat proses pencarian data spasial  
- Mengurangi jumlah data yang harus diperiksa  
- Mengoptimalkan performa query  

---

### 3. Pengujian Setelah Index
Setelah index dibuat, query dijalankan kembali untuk membandingkan performa.

Hasil:
- Query menggunakan **Index Scan / Bitmap Index Scan**  
- Waktu eksekusi menjadi lebih cepat dibandingkan sebelumnya  

---

### 4. Identifikasi Query Lambat
Ditemukan query yang tidak efisien karena menggunakan fungsi yang menghambat penggunaan index.

Ciri-ciri:
- Menggunakan transformasi geometri dalam kondisi query  
- Menghasilkan kembali **Sequential Scan**  
- Waktu eksekusi lebih lambat  

---

### 5. Optimasi Query
Query diperbaiki dengan menggunakan pendekatan yang mendukung penggunaan index.

Hasil:
- Query dapat menggunakan index  
- Waktu eksekusi lebih cepat  
- Performa meningkat secara signifikan  

---

### 6. Analisis Data Spasial
Dilakukan analisis hubungan antar data spasial, seperti:
- Jumlah fasilitas dalam suatu wilayah  
- Relasi antara jalan dan wilayah  

Analisis ini menunjukkan bagaimana data spasial dapat digunakan untuk menghasilkan informasi yang lebih bermakna.

---

## 📊 Analisis Performa

Perbandingan hasil query:

| Kondisi | Jenis Scan | Keterangan |
|--------|----------|----------|
| Sebelum Index | Sequential Scan | Lambat |
| Setelah Index | Index Scan | Lebih cepat |

---

## ⚡ Perhitungan Speedup

Performa dihitung menggunakan konsep speedup:

- Speedup = Waktu Lama / Waktu Baru  
- Efisiensi = ((Waktu Lama - Waktu Baru) / Waktu Lama) × 100%  

Hasil menunjukkan adanya peningkatan performa yang signifikan setelah penggunaan index.

---

## 🧠 Kesimpulan
Penggunaan spatial index (GiST) terbukti sangat penting dalam meningkatkan performa query spasial. Query yang sebelumnya menggunakan sequential scan dapat dioptimasi menjadi index scan sehingga lebih efisien.

Selain itu, pemilihan metode query yang tepat juga berpengaruh besar terhadap performa, terutama dalam mendukung penggunaan index.

---
