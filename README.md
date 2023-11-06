# amarta_foods

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tugas 7: Elemen Dasar Flutter
## Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter
Dalam pengembangan aplikasi Flutter, perbedaan utama antara stateless dan stateful widget terletak pada bagaimana mereka mengelola keadaan (state) dari widget tersebut. Berikut adalah perbedaan utama antara keduanya:
1. Stateless Widget:
    - Stateless widget adalah widget yang tidak memiliki keadaan internal yang dapat berubah setelah widget dibuat. Dengan kata lain, mereka bersifat statis dan tidak dapat berubah setelah mereka ditempatkan di dalam widget tree.
    - Stateless widget berguna untuk bagian tampilan yang tidak perlu berubah atau tidak memerlukan pembaruan berdasarkan perubahan data.
    - Contoh penggunaan stateless widget termasuk teks statis, ikon, gambar, dan elemen UI lainnya yang tidak memerlukan perubahan dinamis.
2. Stateful Widget:
    - Stateful widget adalah widget yang memiliki keadaan internal yang dapat berubah selama siklus hidup widget. Mereka dapat diperbarui, direbuild, dan memperbarui tampilan sesuai dengan perubahan keadaan internal.
    - Stateful widget digunakan ketika Anda memiliki elemen UI yang harus bereaksi terhadap perubahan data, masukan pengguna, atau peristiwa lainnya. Misalnya, formulir yang memerlukan input dan pembaruan berdasarkan interaksi pengguna adalah kandidat yang baik untuk stateful widget.
    - Stateful widget memiliki kelas yang terkait dengan mereka yang disebut "State". Kelas "State" ini memungkinkan Anda untuk menyimpan dan memperbarui keadaan widget.
Contoh penggunaan stateful widget biasanya melibatkan perubahan data dinamis, seperti mengganti teks, mengubah warna latar belakang, atau menambah item ke dalam daftar.
Dalam ringkasan, perbedaan utama adalah bahwa stateless widget adalah statis dan tidak dapat berubah, sementara stateful widget memiliki keadaan internal yang dapat berubah dan memungkinkan respons terhadap perubahan. Pilihan antara keduanya tergantung pada kebutuhan dan karakteristik elemen UI yang Anda bangun dalam aplikasi Flutter.
## Seluruh widget yang digunakan dan fungsinya masing-masing.
1. `MyHomePage`:
   - `Scaffold`: Ini adalah kerangka dasar untuk halaman utama yang menyediakan elemen-elemen UI dasar seperti AppBar dan body.
   - `AppBar`: Ini adalah bilah aplikasi di bagian atas halaman yang berisi judul aplikasi.
   - `SingleChildScrollView`: Ini adalah widget yang memungkinkan isi halaman dapat discroll. Digunakan untuk memungkinkan halaman discroll jika kontennya melebihi layar.
   - `Padding`: Digunakan untuk menambahkan jarak atau padding di sekitar elemen-elemen anaknya.
   - `Column`: Digunakan untuk mengatur elemen-elemen anak secara vertikal.
2. `ShopCard`:
   - `Material`: Ini adalah widget yang mengaplikasikan efek Material Design dan memberikan latar belakang dengan warna (sesuai dengan warna yang diberikan pada item ShopItem).
   - `InkWell`: Ini adalah widget yang membuat area responsif terhadap sentuhan (misalnya, ketika di-klik). Ketika di-tap, ia menampilkan Snackbar.
   - `Container`: Digunakan untuk mengelilingi ikon dan teks. Container ini memiliki padding dan mengatur latar belakang warna.
   - `Icon`: Widget ini menampilkan ikon dengan warna putih dan ukuran tertentu.
   - `Text`: Widget ini menampilkan teks yang sesuai dengan nama item dari `ShopItem`.
3. `MyApp`:
   - `MaterialApp`: Ini adalah widget yang digunakan untuk mengatur konfigurasi dasar aplikasi. Ini termasuk pengaturan judul aplikasi, tema (theme), dan halaman awal (home).
   - `title`: Digunakan untuk memberi judul aplikasi.
   - `theme`: Ini adalah tema (theme) aplikasi dan mengatur tampilan keseluruhan aplikasi. Anda mengatur colorScheme untuk mengatur warna tema dan mengaktifkan useMaterial3 untuk menggunakan Material Design 3.0.
   - `home`: Ini adalah halaman utama aplikasi, dalam hal ini, Anda mengatur `MyHomePage()` sebagai halaman awal.
## Langkah-langkah menyelsaikan checklist
### Langkah 1: Membuat Proyek Flutter
Buka _command prompt_ dan navigasikan ke direktori tempat Anda ingin membuat proyek Flutter. Lalu, jalankan perintah berikut untuk membuat proyek Flutter dengan nama "inventoreal_mobile" dan pindah ke direktori proyek tersebut:
```bash
flutter create inventoreal_mobile
cd inventoreal_mobile
```

### Langkah 2: Menambahkan File `menu.dart`
Buka folder `lib` dalam proyek `inventoreal_mobile` dan tambahkan file baru bernama `menu.dart`.

### Langkah 3: Menyusun Kode
Pertama-tama, impor paket `flutter/material.dart` di bagian awal file `menu.dart`. Kemudian, pindahkan kelas `MyHomePage` dan `_MyHomePageState` yang ada dalam file `main.dart` ke dalam file `menu.dart`.

### Langkah 4: Mengimpor Fungsi dari `menu.dart`
Di dalam file `main.dart`, tambahkan baris kode berikut untuk mengimpor fungsi yang diperlukan dari file `menu.dart`. Ini akan memastikan bahwa tidak ada kesalahan saat mengakses kelas dan fungsi yang didefinisikan di `menu.dart`.
```dart
import 'package:inventoreal_mobile/menu.dart';
```

### Langkah 5: Membuat Tombol-Tombol Sederhana
Di dalam file `main.dart`, ubah konfigurasi `MyHomePage` dengan menghapus `MyHomePage(title: 'Flutter Demo Home Page')` dan menggantinya dengan `home: MyHomePage()`.

### Langkah 6: Mengubah `MyHomePage` menjadi Stateless
Di dalam file `menu.dart`, ubah `class MyHomePage` dari stateful menjadi stateless dan ubah kontennya sebagai berikut:
```dart
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ...
    );
  }
}
```
Jangan lupa untuk menghapus fungsi State yang ada di bawah widget stateless ini.

### Langkah 7: Mendefinisikan Atribut Tombol
Tambahkan definisi atribut tombol (InventoryItem) di dalam `class MyHomePage`:
```dart
final List<InventoryItem> items = [
  InventoryItem("Lihat Item", Icons.checklist, Colors.green),
  InventoryItem("Tambah Item", Icons.add_shopping_cart, Colors.blue),
  InventoryItem("Logout", Icons.logout, Colors.purple),
];
```

### Langkah 8: Mengubah Fungsi `Widget build`
Di dalam `class MyHomePage`, ubah fungsi `Widget build` menjadi sebagai berikut:
```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'InventoReal',
        style: TextStyle(color: Color.fromARGB(255, 95, 196, 95)),
      ),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                'Main Menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              primary: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: items.map((InventoryItem item) {
                return InventoryCard(item);
              }).toList(),
            ),
          ],
        ),
      ),
    ),
  );
}
```

### Langkah 9: Menambahkan Fungsi `InventoryCard`
Tambahkan fungsi berikut untuk mendefinisikan tampilan tombol/card yang Anda tambahkan:
```dart
class InventoryCard extends StatelessWidget {
  final InventoryItem item;

  const InventoryCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

Dengan langkah-langkah ini, saya telah membuat aplikasi Flutter yang menampilkan tiga tombol dengan ikon dan teks, dan akan menampilkan Snackbar ketika tombol tersebut ditekan.