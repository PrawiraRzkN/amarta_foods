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
flutter create amarta_foods
cd amarta_foods
```

### Langkah 2: Menambahkan File `menu.dart`
Buka folder `lib` dalam proyek `amarta_foods` dan tambahkan file baru bernama `menu.dart`.

### Langkah 3: Menyusun Kode
Pertama-tama, impor paket `flutter/material.dart` di bagian awal file `menu.dart`. Kemudian, pindahkan kelas `MyHomePage` dan `_MyHomePageState` yang ada dalam file `main.dart` ke dalam file `menu.dart`.

### Langkah 4: Mengimpor Fungsi dari `menu.dart`
Di dalam file `main.dart`, tambahkan baris kode berikut untuk mengimpor fungsi yang diperlukan dari file `menu.dart`. Ini akan memastikan bahwa tidak ada kesalahan saat mengakses kelas dan fungsi yang didefinisikan di `menu.dart`.
```dart
import 'package:amarta_foods/menu.dart';
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
final List<ShopItem> items = [
   ShopItem("Lihat Item", Icons.checklist, Colors.yellow),
   ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.brown),
   ShopItem("Logout", Icons.logout, Colors.red),
];
```

### Langkah 8: Mengubah Fungsi `Widget build`
Di dalam `class MyHomePage`, ubah fungsi `Widget build` menjadi sebagai berikut:
```dart
@override
Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
         title: const Text(
            'Amarta Foods',
         ),
      ),
      body: SingleChildScrollView(
         // Widget wrapper yang dapat discroll
         child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
               // Widget untuk menampilkan children secara vertikal
               children: <Widget>[
                  const Padding(
                     padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                     // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                     child: Text(
                        'Amarta Foods', // Text yang menandakan toko
                        textAlign: TextAlign.center,
                        style: TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold,
                        ),
                     ),
                  ),
                  // Grid layout
                  GridView.count(
                     // Container pada card kita.
                     primary: true,
                     padding: const EdgeInsets.all(20),
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 10,
                     crossAxisCount: 3,
                     shrinkWrap: true,
                     children: items.map((ShopItem item) {
                        // Iterasi untuk setiap item
                        return ShopCard(item);
                     }).toList(),
                  ),
               ],
            ),
         ),
      ),
   );
}
```

### Langkah 9: Menambahkan Fungsi `ShopCard`
Tambahkan fungsi berikut untuk mendefinisikan tampilan tombol/card yang Anda tambahkan:
```dart
class ShopCard extends StatelessWidget {
   final ShopItem item;

   const ShopCard(this.item, {super.key}); // Constructor

   @override
   Widget build(BuildContext context) {
      return Material(
         color: item.color,
         child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () {
               // Memunculkan SnackBar ketika diklik
               ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                          content: Text("Kamu telah menekan tombol ${item.name}!")));
            },
            child: Container(
               // Container untuk menyimpan Icon dan Text
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

# Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
## Perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`
`Navigator.push()` dan `Navigator.pushReplacement()` adalah dua metode yang digunakan dalam Flutter untuk mengelola navigasi antar halaman dalam aplikasi. Berikut adalah perbedaan antara keduanya beserta contoh penggunaannya:

1. `Navigator.push()`:
   - `Navigator.push()` digunakan untuk menambahkan halaman baru ke tumpukan navigasi (navigation stack).
   - Ini akan menambahkan halaman baru di atas halaman saat ini dalam tumpukan navigasi, sehingga pengguna dapat kembali ke halaman sebelumnya dengan menekan tombol "Kembali" pada perangkat mereka.
   - Berguna ketika ingin menambahkan halaman baru dan memungkinkan pengguna untuk kembali ke halaman sebelumnya.

Contoh penggunaan `Navigator.push()`:

```dart
// Navigasi dari halaman saat ini ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);
```

2. `Navigator.pushReplacement()`:
   - `Navigator.pushReplacement()` juga digunakan untuk menambahkan halaman baru ke tumpukan navigasi, tetapi dengan perbedaan bahwa itu menggantikan halaman saat ini dalam tumpukan navigasi.
   - Ini berarti bahwa ketika Anda menggunakan `pushReplacement()`, pengguna tidak dapat kembali ke halaman sebelumnya dengan menekan tombol "Kembali" karena halaman saat ini digantikan oleh halaman baru.
   - Berguna ketika ingin menggantikan halaman saat ini dengan halaman baru, misalnya ketika pengguna berhasil login dan ingin beralih dari halaman login ke halaman beranda.

Contoh penggunaan `Navigator.pushReplacement()`:

```dart
// Menggantikan halaman saat ini dengan halaman baru
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomeScreen()),
);
```

Dalam kedua contoh di atas, `context` adalah objek BuildContext yang diperlukan untuk mengakses Navigator, dan `MaterialPageRoute` adalah salah satu dari banyak jenis rute yang dapat digunakan dalam Flutter untuk menggambarkan bagaimana halaman baru akan ditampilkan. Developer dapat mengganti `NewPage()` atau `HomeScreen()` dengan halaman-halaman yang sesuai dalam aplikasi.
## Layout widget pada Flutter
Berikut adalah beberapa layout widget pada Flutter dan konteks penggunaannya:

1. `Container`:
   - Penggunaan: Membungkus widget lain, mengatur padding, margin, dan dekorasi, dan mengendalikan tata letak kontennya.

2. `Row`:
   - Penggunaan: Mengatur widget horizontal dalam baris.

3. `Column`:
   - Penggunaan: Mengatur widget vertikal dalam kolom.

4. `ListView`:
   - Penggunaan: Membungkus daftar panjang atau berpotensi panjang dari widget.

5. `Expanded`:
   - Penggunaan: Mengisi ruang yang tersedia dalam `Row` atau `Column` sesuai dengan proporsi yang ditentukan.

6. `Stack`:
   - Penggunaan: Menempatkan widget di atas satu sama lain dengan kontrol posisi yang tepat.

7. `Card`:
   - Penggunaan: Menggambarkan kartu yang memiliki penampilan khusus dengan bayangan dan elemen-elemen dalamnya.

8. `SizedBox`:
   - Penggunaan: Mengatur ukuran widget yang berisi widget anaknya.

9. `Wrap`:
   - Penggunaan: Mengatur widget dalam baris dan kolom yang dapat berubah berdasarkan kebutuhan tanpa menghasilkan tampilan overflow.

10. `Flow`:
   - Penggunaan: Mengatur widget dalam tata letak berbasis aliran yang dapat mengatur widget dalam satu atau beberapa arah.

11. `IntrinsicHeight`:
   - Penggunaan: Memastikan bahwa widget anak dalam `Column` memiliki tinggi yang seragam.

12. `GridView`:
   - Penggunaan: Mengatur widget dalam grid, baik vertikal atau horizontal.

13. `CustomMultiChildLayout`:
   - Penggunaan: Mengizinkan pengaturan tata letak yang sangat kustom untuk widget anaknya.

14. `SingleChildScrollView`:
   - Penggunaan: Membungkus widget anak dalam scrollbar ketika konten dapat mengisi lebih dari satu layar.

15. `ListBody`:
   - Penggunaan: Mengatur widget anak dalam tata letak tubuh daftar yang dapat diatur sesuai kebutuhan.

16. `Table`:
   - Penggunaan: Mengatur widget dalam tabel berbasis sel yang dapat mengatur widget dalam baris dan kolom.

17. `Flow`:
   - Penggunaan: Mengatur widget dalam tata letak berbasis aliran yang dapat mengatur widget dalam satu atau beberapa arah.

## Elemen Input pada Form yang Digunakan dan Alasannya
`TextFormField`: Saya menggunakan `TextFormField` dengan _input validation_ untuk menerima input teks seperti nama makanan, daerah asal, kategori menu, jumlah, harga, dan deskripsi. Khusus untuk jumlah dam harga, saya lakukan validasi dengan percobaan parse menjadi `int`.
## Penerapan _Clean Architecture_ pada aplikasi Flutter
Penerapan Clean Architecture pada aplikasi Flutter adalah suatu pendekatan untuk mengorganisasi dan memisahkan kode dalam aplikasi agar lebih terstruktur, mudah diuji, dan lebih mudah untuk dikelola. Clean Architecture terdiri dari beberapa lapisan dengan tanggung jawab yang berbeda, termasuk "Domain", "Use Cases", "Interface", dan "Presentation". Berikut adalah panduan umum untuk menerapkan Clean Architecture dalam aplikasi Flutter:

1. Lapisan Domain:
   - Ini adalah lapisan inti aplikasi yang berisi bisnis logic dan entitas (model domain).
   - Definisikan model domain yang mewakili data dan aturan bisnis aplikasi.
   - Implementasikan use case atau interactor untuk menjalankan aturan bisnis.
   - Tidak boleh tergantung pada detail implementasi seperti Flutter atau database.

2. Lapisan Use Cases (Application):
   - Ini adalah lapisan yang mengandung logika aplikasi yang spesifik, seperti pengolahan input pengguna.
   - Use cases mewakili "aturan bisnis" aplikasi.
   - Use cases ini menggunakan model domain dan interactor dari lapisan domain.
   - Use cases ini berfungsi sebagai jembatan antara lapisan domain dan lapisan presentasi.

3. Lapisan Interface:
   - Lapisan ini berfungsi sebagai kontrak antara lapisan presentasi dan lapisan aplikasi/domain.
   - Ini berisi antarmuka (interfaces) yang diperlukan oleh lapisan presentasi untuk berinteraksi dengan aplikasi.
   - Contoh interface termasuk repository, service, atau API.

4. Lapisan Presentasi:
   - Ini adalah lapisan yang mengelola tampilan, antarmuka pengguna, dan interaksi dengan pengguna.
   - Menggunakan framework Flutter untuk membangun UI.
   - Menggunakan kontrak dari lapisan interface untuk berkomunikasi dengan lapisan aplikasi/domain.
   - Tidak boleh mengandung logika bisnis, seharusnya hanya fokus pada tampilan dan interaksi.

Contoh penerapan Clean Architecture dalam aplikasi Flutter:

- `lib/` (root):
   - `domain/`: Definisikan model domain dan use cases di sini.
   - `application/`: Implementasikan use cases dan logika aplikasi di sini.
   - `interfaces/`: Tentukan antarmuka (interface) yang diperlukan.
   - `presentation/`: Atur tampilan dan interaksi pengguna di sini.

Keuntungan penerapan Clean Architecture dalam aplikasi Flutter adalah pemisahan yang jelas antara logika bisnis, tampilan, dan komponen infrastruktur. Ini memungkinkan pengujian yang lebih mudah, fleksibilitas dalam perubahan teknologi atau framework, dan pemeliharaan yang lebih baik dalam jangka panjang. Selain itu, ini memisahkan kode yang terkait dengan Flutter dari kode bisnis, sehingga kode bisnis dapat digunakan ulang pada platform lain jika diperlukan.
## Langkah-langkah menyelsaikan checklist
## Step-by-Step untuk Membuat Halaman Formulir dan Drawer Menu pada Aplikasi Flutter

### Langkah 1: Membuat Halaman Formulir Tambah Item Baru

1. Buat sebuah halaman baru dengan nama "shoplist_form.dart" dalam proyek Flutter Anda.

2. Tambahkan import untuk material.dart dan left_drawer.dart ke dalam berkas "shoplist_form.dart".

3. Buat widget "FoodFormPage" sebagai StatefulWidget dengan sebuah form. Gunakan widget Scaffold dan tambahkan app bar dengan judul "Form Tambah Produk". Atur warna latar belakang dan warna teks sesuai preferensi Anda.

```dart
import 'package:flutter/material.dart';
import 'left_drawer.dart'; // Import left_drawer.dart

class FoodFormPage extends StatefulWidget {
  const FoodFormPage({Key? key});

  @override
  State<FoodFormPage> createState() => _ShopFormPageState();
}

class _FoodFormPageState extends State<FoodFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Form Tambah Menu'),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Form(
        // ... Isi formulir di sini
      ),
    );
  }
}
```

4. Di dalam formulir, tambahkan elemen input seperti "Nama", "Harga", "Kategori", "Daerah Asal" dan "Deskripsi." Gunakan TextFormField dan atur tampilan dekorasi sesuai preferensi Anda.

```dart
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Nama Menu",
      labelText: "Nama Menu",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        // Simpan nilai Nama Menu
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Nama tidak boleh kosong!";
      }
      return null;
    },
  ),
),
```

5. Tambahkan validasi input untuk setiap elemen input. Pastikan input tidak boleh kosong, dan sesuai dengan jenis data yang diharapkan.

6. Tambahkan tombol "Save" di bagian bawah halaman formulir. Buat tombol tersebut dengan menggunakan widget ElevatedButton.

```dart
Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.indigo),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Tampilkan pop-up konfirmasi
        }
      },
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
```

7. Tampilkan data yang diisi dalam formulir pada pop-up konfirmasi setelah tombol "Save" ditekan.

### Langkah 2: Membuat Drawer Menu

1. Buat widget drawer dalam sebuah berkas terpisah dengan nama "left_drawer.dart." Drawer ini akan berisi opsi menu navigasi.

2. Import package material.dart dalam berkas "left_drawer.dart."

3. Buat widget "LeftDrawer" yang merupakan StatelessWidget dengan drawer sebagai kontennya. Gunakan ListView untuk menampilkan opsi menu.

```dart
import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // ... Isi opsi menu di sini
        ],
      ),
    );
  }
}
```

4. Tambahkan opsi menu pada drawer, seperti "Halaman Utama" dan "Tambah Produk." Gunakan ListTile dan ikon yang sesuai.

```dart
ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Halaman Utama'),
  onTap: () {
    // Navigasi ke Halaman Utama
  },
),
ListTile(
  leading: const Icon(Icons.add_shopping_cart),
  title: const Text('Tambah Menu'),
  onTap: () {
    // Navigasi ke Halaman Formulir Tambah Produk
  },
),
```

5. Di dalam onTap setiap opsi menu, gunakan Navigator.pushReplacement() untuk melakukan navigasi ke halaman yang sesuai.

### Langkah 3: Menggunakan Drawer pada Halaman Utama dan Halaman Formulir

1. Di halaman utama, tambahkan widget LeftDrawer ke dalam widget Scaffold. Ini akan menampilkan drawer menu di halaman utama.

```dart
return Scaffold(
  appBar: AppBar(
    title: const Text(
      'Menu List',
    ),
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
  ),
  drawer: const LeftDrawer(), // Tambahkan drawer ke halaman utama
  // ... Konten halaman utama
);
```

2. Di halaman formulir, juga tambahkan widget LeftDrawer ke dalam widget Scaffold. Ini akan menampilkan drawer menu di halaman formulir.

```dart
return Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text(
        'Form Tambah Menu',
      ),
    ),
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
  ),
  drawer: const LeftDrawer(), // Tambahkan drawer ke halaman formulir
  // ... Konten halaman formulir
);
```

Setelah menjalankan seluruh langkah diatas, saya melakukan refactor pada struktur penyimpanan file sehingga menjadi lebih rapi.