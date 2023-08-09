import 'package:figam_project1/views/screens/android/Callpage.dart';
import 'package:figam_project1/views/screens/android/Card_page.dart';
import 'package:figam_project1/views/screens/android/Different_typewatch.dart';
import 'package:figam_project1/views/screens/android/HomePage.dart';
import 'package:figam_project1/views/screens/android/Offer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class deshboard extends StatefulWidget {
  const deshboard({super.key});

  @override
  State<deshboard> createState() => _deshboardState();
}

class _deshboardState extends State<deshboard> {
  int selectIndex = 0;

  void navigateBottombar(int index) {
    setState(() {
      selectIndex = index;
    });
  }
// ignore: non_constant_identifier_names
  final List Pages = [
    const HomePage(),
    const different_typewatch(),
    const offer_page(),
    const callpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {

              Get.toNamed('/Card_Page');
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: navigateBottombar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: "Offer"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
      ),
    );
  }
}
