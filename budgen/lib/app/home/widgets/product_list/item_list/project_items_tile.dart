import 'package:budgen/domain/entities/item.dart';
import 'package:flutter/material.dart';

class ProjectItemsTile extends StatelessWidget {
  final Item item;
  final String qtd;
  final void Function(int, Item) alterValue;

  const ProjectItemsTile({
    @required this.item,
    @required this.qtd,
    @required this.alterValue,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final value = int.tryParse(qtd);
    const int decrease = -1;
    const int add = 1;

    return Card(
        child: ListTile(
      leading: Icon(Icons.category_rounded),
      title: Text(item.name),
      subtitle: Text(item?.description ?? "S/N"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.add_circle),
            onPressed: () {
              alterValue(add, item);
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
              alterValue(decrease, item);
            },
          ),
        ],
      ),
    ));
  }
}
