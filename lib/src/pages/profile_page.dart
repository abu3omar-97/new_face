import 'package:flutter/material.dart';
import 'package:newFace/src/widgets/custom_list_tile.dart';

// 17

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turnOnNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(
                    fontSize: 45,
                    fontFamily: "Pac",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 4),
                            color: Colors.black38)
                      ],
                      image: DecorationImage(
                          image: AssetImage("lib/images/Zinger.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Yaman Alashqar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "0799668111",
                        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 40),
              Text(
                "  Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Card(
                child: Column(
                  children: <Widget>[
                    CustomListTile(
                      icon: Icons.location_on,
                      text: "Location",
                    ),
                    CustomListTile(
                      icon: Icons.visibility,
                      text: "Change Password",
                    ),
                    CustomListTile(
                      icon: Icons.shopping_cart,
                      text: "Orders",
                    ),
                    CustomListTile(
                      icon: Icons.help,
                      text: "Help",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                "  Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Card(
                  child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "App  Notification",
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          value: turnOnNotification,
                          onChanged: (bool value) {
                            setState(() {
                              turnOnNotification = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(height: 10, color: Colors.grey),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
