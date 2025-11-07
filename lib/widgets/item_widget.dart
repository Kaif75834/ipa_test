import 'package:flutter/material.dart';
import 'package:fistproject/model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({required Key key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 0.0, //means border shadow
      child: ListTile(
        onTap: () {
          ("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",

          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
