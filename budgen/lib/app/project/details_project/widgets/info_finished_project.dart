import 'package:budgen/domain/entities/project.dart';
import 'package:flutter/material.dart';

class InfoFinishedProject extends StatelessWidget {
  final Project project;
  const InfoFinishedProject({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            project.name.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'E-mail: ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            project.email,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 5),
            child: Row(
              children: [
                Icon(
                  Icons.grading_rounded,
                  color: Colors.white,
                ),
                Text(
                  'R\$ ' + project.price.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
