import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ProjectTrailingButtons extends StatelessWidget {
  final int qtd;
  final Function incrementValue;
  final Function decrementValue;

  const ProjectTrailingButtons({
    Key? key, required this.qtd, required this.incrementValue, required this.decrementValue,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () => incrementValue(),
          icon: Icon(
            Icons.add,
            color:
               colorPalette.primaryCollor,
          ),
        ),
        Material(
          borderRadius: BorderRadius.all(
              Radius.circular(30)),
          elevation: 20,
          child: Container(
            width: 40,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,top: 1,bottom: 1),
                  child: Text(
                    "$qtd",
                    style: TextStyle(
                        color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(30))
              )),
        ),
        IconButton(
          onPressed: () => decrementValue(),
          icon: Icon(
            Icons.remove,
            color:
               colorPalette.primaryCollor,
          ),
        )
      ],
    );
  }
}
