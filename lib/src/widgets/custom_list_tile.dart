import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomListTile({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(
                icon,
                color: Colors.blueGrey,
              ),
              title: Text(text)),
          Divider(height: 10, color: Colors.grey),
        ],
      ),
    );
  }
}
