import 'package:flutter/material.dart';
import 'package:newFace/src/pages/favorite_page.dart';
import 'package:newFace/src/pages/home_page.dart';
import 'package:newFace/src/pages/profile_page.dart';
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/favorite_page.dart';
import '../pages/profile_page.dart';

// #6

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  Widget currentPage;
  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, favoritePage, orderPage, profilePage];
    currentPage = homePage;
  }

  final bottomStyle = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: bottomStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text(
                  "Explore",
                  style: bottomStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text(
                  "Orders",
                  style: bottomStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(
                  "Profile",
                  style: bottomStyle,
                )),
          ]),
      body: currentPage,
    );
  }
}
