Nama    : Ayu Putri Dewi Fitriyani
Kelas   : E

# PBP Tugas 7-----------------------
### Perbedaan Stateless Widget dan Stateful Widget 

Stateless Widget : Widget yang gabisa berubah dan gaakan pernah berubah, selain itu bisa dikombinasikan dengan Stateless Widget

-  Berguna apabila bagian dari interface yang user gambarkan gabergantung pada apapun selain informasi  Berguna ketika bagian dari antarmuka pengguna gambarkan tidak bergantungkonfigurasi di obyek itu sendiri dan BuildContext dismana widget tersebut meningkat.

Stateful Widget : Widget yang dinamis atau bisa berubah

Perbedaan :
| Stateless Widget | Stateful Widget| 
| :---------: | ----------: |
| Tidak bisa menggunakan fungsi *setState()* | Bisa menggunakan fungsi *setState()*  | 
| :---------: | ----------: |
| Prosesnya dari *Constructor* -> *Build* | Prosesnya dari *Constructor* -> *Internal State* -> *Build*  |
| :---------: | ----------: |
| Untuk dapat merubah tampilan UI, harus re-render widget, makin banyak makin tinggi performance yang diperlukan di device | gaperlu, kebalikannya |
| :---------: | ----------: |
| Bawaan Flutter : Text, Icon, IconButton, dll  | Checkbox, Radio, Slider, TextField, dll|
| :---------: | ----------: |

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


# PBP Tugas 8 -----------------------

1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

| Navigator.push () | Navigator.pop ()| 
| :---------: | ----------: |
| Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. | Metode pop menghapus rute paling atas dari tumpukan. | 
| :---------: | ----------: |
| Halaman baru ditampilkan di atas halaman sebelumnya.| Ini menampilkan halaman sebelumnya kepada pengguna. |
| :---------: | ----------: |

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
    ##### Column: untuk menampung widget lainnya secara vertikal
    ##### Container: sebagai container untuk menampung widget lainnya
    ##### Form: untuk membuat form
    ##### ListTile: row yang menampung teks sebagai leading dan trailing
    ##### Drawer: untuk membuat drawer di sisi kiri layar (untuk navigasi)


3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
    ##### onChanged : terjadi ketika widget diubah
    ##### onPressed : terjadi ketik awidget di tekan
    ##### onTap: terjadi ketika widget di tap
    ##### onSaved: terjadi ketika widget disimpan

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

    Navigator akan mengganti halaman aplikasi dan mengatur stack of route. Selain itu Navigator akan menyediakan dua cara untuk mengatur stack of route :
    - Declarative => menggunakan Navigator.pages
    - Imperative => menggunakan Navigator.push dan Navigator.pop

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

##### Membuat tiga tombol navigasi pada drawer 
    - Membuat file berupa drawer.bat yang berisi 3 navigasi, sebenernya bisa aja ditaro di file tambah_budget (seperti di form.dart lab 7) tapi agar memudahkan saja
![](gambar/1.png)

##### Membuat form judul dan nominal 
    - membuat variable terlebih dahulu
    - memasukan fungsi drawer pada buildcontext
![](gambar/2.png)

##### Membuat padding yang mengatur form judul dan nominal tersebut
![](gambar/3.png)

##### Membuat dropdown
![](gambar/6.png)

##### Membuat button yang memunculkan tanggal
![](gambar/4.png)
![](gambar/5.png)

##### Membuat file data_budget yang akan menampilkan semua data yang diinput
![](gambar/7.png)

##### Membuat file budget yang akan menampilkan attribute yang dibutuhkan
![](gambar/8.png)
