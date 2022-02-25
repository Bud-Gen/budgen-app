import 'package:budgen/domain/entities/project.dart';
import 'package:flutter/material.dart';

class AddDiscountAlert extends StatelessWidget {
  final Function addDiscount;
  final Function addDiscountValue;
  final Project project;

  const AddDiscountAlert({
    required this.addDiscount,
    required this.addDiscountValue,
    required this.project,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _form = GlobalKey<FormState>();

    return AlertDialog(
      title: Text("Adicionar Desconto"),
      content: Expanded(
        child: TextFormField(
          key: _form,
          validator: (value) {
            final valueToDouble = double?.tryParse(value!) ?? 0;
            if (value.isEmpty) return "valor não pode ser vazio.";
            if (valueToDouble > project.price)
              return "valor maior que o preço total.";
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.number,
          initialValue: "0.0",
          onChanged: (String value) => addDiscountValue(value),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            addDiscount();
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
