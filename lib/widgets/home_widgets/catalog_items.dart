import 'package:firstapplications/models/cart.dart';
import 'package:firstapplications/models/catalog.dart';
import 'package:firstapplications/pages/home_detail_page.dart';
import 'package:firstapplications/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(
                            catalog: CatalogModel.items[index],
                          ))),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(image: catalog.image)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.bold
                    .color(context.primaryColor)
                    .make()
                    .p2(),
                catalog.desc.text.color(Colors.grey).make().p2(),
                14.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.all(4),
                  children: [
                    "\$${catalog.price}".text.lg.bold.make(),
                    AddToCart(
                      catalog: catalog,
                    ),
                  ],
                ).pOnly(right: 8),
              ],
            ),
          ),
        ],
      ),
    ).color(context.cardColor).rounded.square(100).make().py16();
  }
}

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({Key? key, required this.catalog}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
         isAdded = isAdded.toggle();
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.primaryColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: isAdded ? Icon(Icons.done) : "Add To Cart".text.make());
  }
}
