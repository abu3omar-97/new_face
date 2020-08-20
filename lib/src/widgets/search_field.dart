import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// #3
class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ADD A WIDGET (MATERIAL) WITH ELAVTION AND BORDER
    return Container(
      margin: EdgeInsets.fromLTRB(5, 3, 5, 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "What are you looking for?",
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }
}
