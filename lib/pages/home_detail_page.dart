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
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.all(4),
          children: [
          "\$${catalog.price}".text.xl4.blue700.bold.make().p12().px12(),
          ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Mythemes.darkBluishcolour),shape: MaterialStateProperty.all(StadiumBorder())), 
          child: Text("Add to cart")).wh(120, 40).py8().px12(),
          ],
          ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).h40(context),).py8(),
          Expanded
          (
            child: VxArc(
              height: 20.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [
                catalog.name.text.xl2.bold.make(),
                catalog.desc.text.lg.color(Colors.grey).make(),10.heightBox,
                "Amet duo gubergren aliquyam ipsum lorem elitr elitr eirmod. Ipsum consetetur eirmod dolores lorem sit amet lorem no. Dolores tempor ipsum kasd labore. Sanctus kasd takimata nonumy magna,Dolores nonumy.".text.center.make().p16(),
                ],
              ).py32(),
           ),
            ),
            
          ),
          ],
        ),
      ),
    );
  }
}
