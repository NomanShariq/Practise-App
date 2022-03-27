import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:firstapplications/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({ @required Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.bold.xl4.color(context.primaryColor).make(),
        "Trending Products".text.make(),
      ],
    );
  }
}