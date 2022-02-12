import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/utils/widgets/slicer_button.dart';
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
    return Card(
      child: ListTile(
        leading: Icon(Icons.category_rounded),
        title: Text(item.name),
        subtitle: Text(item?.description ?? "S/N"),
        trailing: SlicerButton(alterValue, item, qtd),
      ),
    );
  }
}