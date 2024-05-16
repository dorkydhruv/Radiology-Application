import 'package:flutter/material.dart';
import 'package:radiology_app/constants.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        title: Row(
          children: [
            Text(
              "The Economic Times",
              style: TextStyle(
                fontFamily: "Avenir",
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.fiber_manual_record,
              color: secondaryColor,
              size: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text("3 days ago."),
          ],
        ),
        subtitle: Text(
          "Virtual & augmented reality (VR & AR) tech is being adopted in radiology",
          style: TextStyle(
            fontFamily: "Avenir",
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
