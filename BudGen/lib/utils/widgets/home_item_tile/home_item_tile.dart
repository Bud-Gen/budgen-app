import 'package:BudGen/domain/entities/product.dart';
import 'package:BudGen/utils/commons/screen_size.dart';
import 'package:BudGen/utils/style/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'home_store_item_tile.dart';
import '../spin_box.dart';

class HomeProductTile extends StatefulWidget {
  final int qtdProduct;
  final Product product;
  final Function counter;
  final Function remover;
  final IconData icon;
  final bool showCounter;

  const HomeProductTile({Key key, this.qtdProduct, @required this.product, this.counter, this.remover,@required this.icon, this.showCounter}) : super(key: key);

  @override
  _HomeProductTileState createState() => _HomeProductTileState();
}

class _HomeProductTileState extends State<HomeProductTile> {

  final productTileStore = new HomeStoreItemTile();
  final colorPalette = ColorPalette();
  final screenSize = ScreenSize();

  @override
  Widget build(BuildContext context) {
     return Observer(
       builder: (_) {
         return Card(
             child: Column(
               children: [
                 Container(
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(widget.icon),
                         Text(widget.product.name),
                         IconButton(
                             onPressed: () {
                               widget.remover(widget.product.id);
                             },
                             icon: Icon(
                               Icons.delete,
                               size: 20,
                               color: Colors.grey[400],
                             ))
                       ],
                     ),
                   ),
                 ),
                 Divider(height: 6),
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       (widget.showCounter ?? true)
                           ? Row(children: [
                         IconButton(
                           icon: new Icon(Icons.remove),
                           onPressed: () {
                             productTileStore.decreaseQuantity();
                             widget.counter(widget.product.id, productTileStore.quantity);
                           },
                         ),
                         Text(productTileStore.quantity.toString()),
                         IconButton(
                           icon: new Icon(Icons.add),
                           onPressed: () {
                             productTileStore.increaseQuantity();
                             widget.counter(widget.product.id, productTileStore.quantity);
                           },
                         ),
                       ])
                           : Container(),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             "R\$ ${(widget.product.price * productTileStore.quantity).toStringAsFixed(2)}",
                             style: TextStyle(
                               fontSize: screenSize.getTextSize18(),
                               color: colorPalette.getColorBlack(),
                             )),
                       ),
                     ],
                   ),
                 )
               ],
             ));
       },
     );


  }
}

