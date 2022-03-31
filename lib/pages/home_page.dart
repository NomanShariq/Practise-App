import 'dart:convert';

import 'package:firstapplications/models/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firstapplications/models/catalog.dart';
import 'package:firstapplications/widgets/home_widgets/catalog_items.dart';
import '../core/store.dart';
import '../models/catalog.dart';
import '../widgets/home_widgets/catalog_header.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    LoadData();
  }

  LoadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    final productsData = decodedData["Products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((items) => Item.fromMap(items))
        .toList();
    setState(() {});
  } 

  @override
  Widget build(BuildContext context) {
        final CartModel _cart = (VxState.store as MyStore).cart;

    return Scaffold( 
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
          mutations: {RemoveMutations,AddMutations},
          builder:(context, store, status) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, "/cart"),
          backgroundColor: context.primaryColor,
          child: Icon(CupertinoIcons.cart,color: Colors.white,),
          ).badge(color:Colors.grey,count: _cart.items.length),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  (CatalogList().expand())
                else
                  (
                  CircularProgressIndicator().centered().expand()
                  )
              ],
            ),
          ),
        ));
  }
}








