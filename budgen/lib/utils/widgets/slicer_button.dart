import 'package:budgen/domain/entities/product.dart';
import 'package:flutter/material.dart';

class SlicerButton extends StatelessWidget {
  final Function alterValue;
  final Function removeProduct;
  final Product product;
  final String qtd;

  const SlicerButton({
    required this.alterValue,
    required this.product,
    required this.qtd,
    required this.removeProduct,
  }) : super();

  @override
  Widget build(BuildContext context) {
    const add = 1;
    const decrease = -1;
    final value = int.tryParse(qtd);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          // +
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
          // -
          icon: Icon(Icons.do_disturb_on_rounded),
          onPressed: () {
            if (value == 1)
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Deseja remover o item do projeto?"),
                      actions: [
                        TextButton(
                          child: Text("sim"),
                          onPressed: () {
                            removeProduct(product);
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: Text("não"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            alterValue(decrease, product);
          },
        ),
      ],
    );
  }
}
