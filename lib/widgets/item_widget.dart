import 'package:flutter/material.dart';
import '../models/catalog.dart';

class Itemwidget extends StatelessWidget {
  final Item items;

  const Itemwidget({Key? key, required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        onTap: (() {
          print("Ordered");
        }),
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(
          "\$${items.price}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
