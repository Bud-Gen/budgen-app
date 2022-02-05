import 'package:flutter/material.dart';

class EmptyListWarning extends StatelessWidget {
  const EmptyListWarning() : super();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Não há produtos'),
    );
  }
}
