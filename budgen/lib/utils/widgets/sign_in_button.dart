import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  SignInButton({required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.login,
                      size: 30,
                      color: ColorPalette().background,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Entrar com o Google",
                      style: TextStyle(color: ColorPalette().background,fontSize: 17),
                    ),
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: ColorPalette().primaryCollor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
