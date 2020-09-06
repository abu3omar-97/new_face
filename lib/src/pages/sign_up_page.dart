import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newFace/src/pages/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

TextStyle textFieldStyle = TextStyle(fontSize: 20, color: Colors.blueGrey);

class _SignUpPageState extends State<SignUpPage> {
  bool _toogleVisibilty = true;
  IconData visible = Icons.visibility_off;

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter Your Name ...", hintStyle: textFieldStyle),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter Your Email ...", hintStyle: textFieldStyle),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter Your Password ...", hintStyle: textFieldStyle),
      obscureText: _toogleVisibilty,
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _toogleVisibilty = !_toogleVisibilty;

                visible =
                    _toogleVisibilty ? Icons.visibility_off : Icons.visibility;
              });
            },
            icon: Icon(visible),
          ),
          hintText: "Confirm Your Password ...",
          hintStyle: textFieldStyle),
      obscureText: _toogleVisibilty,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Colors.greenAccent])),
      child: Scaffold(
          // resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.white12,
          body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 80),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Icon(Icons.restaurant, size: 50),
//                SizedBox(width: 10),
//                Icon(Icons.fastfood, size: 50),
//              ],
//            ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 2,
                          fontStyle: FontStyle.italic,
                          fontSize: 50,
                          fontFamily: 'Pac'),
                    ),
                    SizedBox(height: 30),
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            _buildNameTextField(),
                            SizedBox(height: 10),
                            _buildEmailTextField(),
                            SizedBox(height: 10),
                            _buildPasswordTextField(),
                            SizedBox(height: 10),
                            _buildConfirmPasswordTextField(),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "or sign in with your existing account | ",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignInPage()));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
