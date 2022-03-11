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
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailPage(catalog: catalog,))),
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
                catalog.name.text.lg.bold.make(),
                catalog.desc.text.color(Colors.grey).make(),
                14.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.all(4),
                  children: [
                    "\$${catalog.price}".text.lg.bold.make(),
                    ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Mythemes.bluishcolour),shape: MaterialStateProperty.all(StadiumBorder())), 
                    child: Text("Buy")),
                  ],
                ).pOnly(right: 8),
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(100).make().py16();
  }
}