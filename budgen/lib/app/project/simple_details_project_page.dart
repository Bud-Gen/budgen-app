import 'package:budgen/domain/entities/project.dart';
import 'package:flutter/material.dart';

class SimpleDetailsProject extends StatelessWidget {
  final Project project;
  const SimpleDetailsProject({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int qtdItems = project.items != null ? project.items!.length : 0;
    final int qtdWorkers =
        project.workers != null ? project.workers!.length : 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes simples do projeto'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome do projeto: ' + project.name,
            ),
            Text(
              'Preço: R\$' + project.price.toStringAsFixed(2),
            ),
            Text(
              'quantidade de itens: ' + qtdItems.toString(),
            ),
            Text(
              'quantidade de serviços: ' + qtdWorkers.toString(),
            )
          ],
        ),
      ),
    );
  }
}
