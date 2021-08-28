import 'package:ecommerce_ui_animation/Pagae/home.dart';
import 'package:ecommerce_ui_animation/Pagae/shop.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String Path = "HomePage";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bool isactived = false;
  int indexNumber = 0;
  List<dynamic> _bottomnavigationbar = [
    HomePage(),
    ShopPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.blueAccent.withOpacity(1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.withOpacity(0.3),
        type: BottomNavigationBarType.fixed,
        iconSize: isactived ? 33 : 27,
        selectedItemColor: Colors.black.withOpacity(1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket_rounded,
              size: 28,
            ),
            label: '',
          )
        ],
        currentIndex: indexNumber,
        onTap: (index) {
          setState(() {
            indexNumber = index;
          });
        },
      ),
      body: _bottomnavigationbar[indexNumber],
    );
  }
}
