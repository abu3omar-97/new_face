import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final IconData iconCategory;
  final int numberOfItems;

  FoodCard(this.categoryName, this.iconCategory, this.numberOfItems);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              child: Icon(
                iconCategory,
                size: 36,
                color: Colors.orangeAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 4,
                  ),
//                  Text(
//                    "info",
//                    style: TextStyle(fontSize: 16),
//                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
