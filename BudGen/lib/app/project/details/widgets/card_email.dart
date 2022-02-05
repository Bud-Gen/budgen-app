import 'package:flutter/material.dart';

class CardEmail extends StatelessWidget {
  const CardEmail() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 1,
              ),
              child: Text('Destinatário'),
            ),
            Center(
              child: Text('bia@bia.com'),
            ),
          ],
        ),
      ),
    );
  }
}
