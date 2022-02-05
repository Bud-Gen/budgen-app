import 'package:flutter/material.dart';

class DetailsProjectItemOption extends StatelessWidget {
  const DetailsProjectItemOption() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Card(
          child: ListTile(
            leading: Icon(Icons.build),
            title: Text('Itens'),
            subtitle: Text('R\$ 200,00'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ));
  }
}
