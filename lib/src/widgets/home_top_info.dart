import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textStyle = TextStyle(
    fontSize: 26,
    color: Colors.blueAccent,
    fontFamily: 'Pac',
    // letterSpacing: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "ORDER NOW ...",
              style: textStyle,
            ),
            Text(
              "NEW FACE",
              style: textStyle,
            ),
          ],
        ),
        Icon(
          Icons.notifications_none,
          size: 36,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }
}
