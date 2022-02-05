import 'package:flutter/material.dart';

class ItemShowButton extends StatelessWidget {
  final Function onTapItems;
  final Function onTapWorkers;
  const ItemShowButton({this.onTapItems, this.onTapWorkers}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('Produtos'),
            onPressed: () => onTapItems(),
          ),
          SizedBox(width: 50),
          RaisedButton(
            child: Text('Serviços'),
            onPressed: () => onTapWorkers(),
          ),
        ],
      ),
    );
  }
}
