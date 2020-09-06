import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// # 7 + 8




class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 85,
              width: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_up,
                        size: 30,
                        color: Colors.orangeAccent,
                      )),
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.orangeAccent,
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/images/order1.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(0, 5))
                  ]),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Chicken Pizza Sandwich",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "2 JDS",
                  style: TextStyle(fontSize: 15, color: Colors.orangeAccent),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Cheese, Lettuce",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.favorite,
                      size: 16,
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
                child: Icon(
              Icons.cancel,
              color: Colors.grey,
            ))
          ],
        ),
      ),
    );
  }
}
