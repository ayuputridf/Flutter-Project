Nama    : Ayu Putri Dewi Fitriyani
Kelas   : E

### Perbedaan Stateless Widget dan Stateful Widget 

Stateless Widget : Widget yang gabisa berubah dan gaakan pernah berubah, selain itu bisa dikombinasikan dengan Stateless Widget

-  Berguna apabila bagian dari interface yang user gambarkan gabergantung pada apapun selain informasi  Berguna ketika bagian dari antarmuka pengguna gambarkan tidak bergantungkonfigurasi di obyek itu sendiri dan BuildContext dismana widget tersebut meningkat.

Stateful Widget : Widget yang dinamis atau bisa berubah

Perbedaan :
| Stateless Widget | Stateful Widget| 
| :---------: | ----------: |

| Tidak bisa menggunakan fungsi *setState()* | Bisa menggunakan fungsi *setState()*  | Bisa menggunakan fungsi *setState()* | Bisa menggunakan fungsi setState()  |
| Prosesnya dari *Constructor* -> *Build* | Prosesnya dari *Constructor* -> *Internal State* -> *Build*  |
| Untuk dapat merubah tampilan UI, harus re-render widget, makin banyak makin tinggi performance yang diperlukan di device | gaperlu, kebalikannya |
| Bawaan Flutter : Text, Icon, IconButton, dll  | Checkbox, Radio, Slider, TextField, dll|

Notes :
*Internal State* : tahap dimana ada pemrosesan state / keaadaan baru yang dipicu dari perubahan data

### Widget yang dipakai pada aplikasi

- Text : untuk menampilkan kata-kata yang diinginkan seperti GENAP atau GANJIL
- Row : untuk menampilkan data, dalam kasus ini yaitu berupa pilihan button apakah ingin di increment atau decrement
- Scaffold : untuk memberi tema material yg jadi dasar dari tampilan device nya pas artikel dibuat. 
- Column : biar tata letaknya fleksibel ke arah horizontal maupun vertikal
- Padding : menambahkan jarak antara container dengan widget yang ada di dalamnya
- AppBar : menu petunjuk untuk memudahkan user
- FloatingActionButton : tombol lingkaran yang memicu tindakan utama di UI aplikasi 
- Center : untuk membuat konten yang ada di child berada di tengah
- Icon : untuk menampilkan design berupa icon

### setState()

*setState()* : untuk memberi tahu framework bila ada yang berubah di object pada *State*, lalu akan build ulang pada *widget* tsb. Maka dari itu framework akan memanggil method *build()* untuk *reload* UI

### Perbedaan antara const dengan final.

*final* dan *const* : keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable.

*const* :
- Mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pas kompilasi variabel - sudah memiliki nilai

*final* :
- final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Sebelum memulai project, memastikan semua set up sudah lengkap dengan command *flutter doctor* pada cmd

2. Membuat project pada Vscode 
- Click View
- Click Command Pallate
- Type Flutter -> click *Flutter : New Project* -> *Application*
- Open file lib -> *main.dart*

3. Membuat Program Counter
- Menambahkan  variabel *_counter* untuk dipakai nantinya
- Membuat method *increment* & *decrement*
- build *widget* yang isinya tampilan device nya ada apa aja
- Buat *condition* apabila angka berupa ganjil ataupun genap
-Lalu Start and Debugging

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
