import 'package:firstapplications/models/cart.dart';
import 'package:firstapplications/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.xl2.make().centered(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(builder: ((context, store, status) => "\$${_cart.totalPrize}"
          .text.
          xl4.blueGray800.make()), mutations: {RemoveMutations}),
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buying not supported yet!! ".text.make(),
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Mythemes.bluishcolour)),
                  child: Text("buy"))
              .w24(context),
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  final CartModel _cart = (VxState.store as MyStore).cart;
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutations]);
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl4.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              leading: Icon(Icons.done),
              iconColor: Colors.green,
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline_outlined),
                color: Colors.red,
                onPressed: () =>
                  RemoveMutations(_cart.items[index]),
                  ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
