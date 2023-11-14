
import 'package:flutter/material.dart';
import 'package:item_inventory/screens/menu.dart';
import 'package:item_inventory/item.dart';
import 'package:item_inventory/daftarItem.dart';



class item_card extends StatelessWidget {
  const item_card(this.item, {Key? key}) : super(key: key);

  final Item item;

  //buat untuk menampilkan card yang ada di globalList

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.nama),
        subtitle: Text(item.dekripsi),
        trailing: Text(item.harga.toString()),
      ),
    );
  }
}

Widget buildItemList(List<Item> globalList) {
  return ListView.builder(
    itemCount: globalList.length,
    itemBuilder: (context, index) {
      return item_card(globalList[index]);
    },
  );
}

class ItemListPage extends StatelessWidget {
  final List<Item> globalList;

  ItemListPage(this.globalList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: buildItemList(globalList),
    );
  }
}
