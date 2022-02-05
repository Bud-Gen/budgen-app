import 'package:BudGen/domain/entities/item.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/utils/widgets/home_item_tile/home_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProjectItemsList extends StatelessWidget {
  final List<Item> items;
  final Project project;
  final Function changeItemQuantity;
  final Function deleteItem;
  const ProjectItemsList({
    @required this.items,
    @required this.project,
    @required this.changeItemQuantity,
    @required this.deleteItem,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (items == null) {
      return Text('ta vazio caralho');
    }

    return Expanded(
      child: Observer(
        builder: (context) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, i) => HomeProductTile(
            icon: Icons.build,
            product: items[i],
            qtdProduct: project.items[items[i].id],
            counter: changeItemQuantity,
            remover: deleteItem,
          ),
        ),
      ),
    );

    // return
  }
}
