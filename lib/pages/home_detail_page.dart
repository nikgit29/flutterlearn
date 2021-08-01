import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.xl4.red800.bold.make(),
              AddToCart(catalog: catalog),
            ],
          ).p8(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.size(10).xl.make(),
                        10.heightBox,
                        "Prieghi sono delle sí sí fragilita di merito 'l piú sia, siamo donne ingannati segreto cospetto i, da mortali non suoi e, 'l siamo che da la grazia. Verso nome di esser intendo cosa viviamo, cosa e da' i noi in. Etterno segreto noi oportune ciascheduna la sempre dio che."
                            .text
                            .color(context.accentColor)
                            .make()
                            .p16()
                      ],
                    ).py64(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
