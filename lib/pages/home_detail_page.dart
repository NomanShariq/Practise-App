import 'package:firstapplications/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) :  assert(catalog!=null) ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mythemes.Creamcolour,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)),
          ],
        ).p16(),
      ),
    );
  }
}
