import 'package:budgen/domain/entities/product.dart';
import 'package:flutter/material.dart';

class SlicerButton extends StatelessWidget {
  final Function alterValue;
  final Product product;
  final String qtd;

  const SlicerButton(this.alterValue, this.product, this.qtd) : super();

  @override
  Widget build(BuildContext context) {
    const add = 1;
    const decrease = -1;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.add_circle),
          onPressed: () {
            alterValue(add, product);
          },
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(qtd),
          ),
        ),
        IconButton(
          icon: Icon(Icons.do_disturb_on_rounded),
          onPressed: () {
            alterValue(decrease, product);
          },
        ),
      ],
    );
  }
}
