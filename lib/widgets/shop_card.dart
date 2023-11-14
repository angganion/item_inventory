import 'package:flutter/material.dart';
import 'package:item_inventory/screens/menu.dart';
import 'package:item_inventory/widgets/left_drawer.dart';
import 'package:item_inventory/screens/shoplist_form.dart';
import 'package:item_inventory/daftarItem.dart';
import 'package:item_inventory/widgets/item_card.dart';


class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}
class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    Color color;
    if (item.name == "Lihat Produk") {
      color = Colors.green;
    } else if (item.name == "Tambah Produk") {
      color = Colors.blue;
    } else {
      color = Colors.red;
    }
    return Material(
      color: color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            // Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShopFormPage()),
            );
          }
          else if (item.name == "Lihat Produk") {
            // Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemListPage(globalList)),
            );
          }
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
