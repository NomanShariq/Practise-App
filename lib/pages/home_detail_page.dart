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
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.all(4),
          children: [
          "\$${catalog.price}".text.xl4.blue900.bold.make().py16().px12(),
          ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Mythemes.bluishcolour),shape: MaterialStateProperty.all(StadiumBorder())), 
          child: Text("Buy")).wh(100, 40).py16().px12(),
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
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(
                children: [
                catalog.name.text.xl2.bold.make(),
                catalog.desc.text.lg.color(Colors.grey).make(),
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
