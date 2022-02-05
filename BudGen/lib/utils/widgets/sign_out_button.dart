import 'package:flutter/material.dart';

class SignOutButton extends StatelessWidget {
  SignOutButton({
    @required this.onPressed,
  });

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: onPressed,
              child: Text(
                "Sign out Google",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
            ),
          ),
        ),
      ],
    );
  }
}
