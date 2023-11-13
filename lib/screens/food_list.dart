import 'package:flutter/material.dart';
import 'package:amarta_foods/widgets/left_drawer.dart';
import 'package:amarta_foods/screens/foodlist_form.dart';

class FoodsPage extends StatefulWidget {
  const FoodsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<FoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              title: Text(
                food.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Daerah Asal: ${food.origin}"),
                  Text("Kategori: ${food.category}"),
                  Text("Harga: Rp${food.price},00"),
                  Text("Jumlah: ${food.amount}"),
                ],
              ),
              isThreeLine: true,
              trailing: IconButton(
                icon: const Icon(Icons.info_outline, color: Colors.black),
                onPressed: () {
                  // Ketika click icon detail, akan memunculkan data lengkap food
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(food.name),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text("Daerah Asal: ${food.origin}"),
                              Text("Kategori: ${food.category}"),
                              Text("Jumlah: ${food.amount}"),

                              Text("Harga: Rp${food.price},00"),
                              Text("Deskripsi: ${food.description}"),
                              Text("Ditambahkan pada tanggal ${food.dateAdded.day}/${food.dateAdded.month}/${food.dateAdded.year} pukul ${food.dateAdded.hour}.${food.dateAdded.minute}")
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}