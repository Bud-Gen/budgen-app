import 'package:flutter/material.dart';

class DetailsProjectWorkerOption extends StatelessWidget {
  const DetailsProjectWorkerOption() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          child: ListTile(
            leading: Icon(Icons.people),
            title: Text('Serviços'),
            subtitle: Text('R\$ 100,00'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ));
  }
}
