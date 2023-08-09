import 'package:figam_project1/views/screens/android/Callpage.dart';
import 'package:figam_project1/views/screens/android/Card_page.dart';
import 'package:figam_project1/views/screens/android/Collection/man_collection.dart';
import 'package:figam_project1/views/screens/android/Deshboard.dart';
import 'package:figam_project1/views/screens/android/Different_typewatch.dart';
import 'package:figam_project1/views/screens/android/HomePage.dart';
import 'package:figam_project1/views/screens/android/Login/login_E5.dart';
import 'package:figam_project1/views/screens/android/Login/login_M1.dart';
import 'package:figam_project1/views/screens/android/Login/login_M2.dart';
import 'package:figam_project1/views/screens/android/Login/login_M3.dart';
import 'package:figam_project1/views/screens/android/Offer_page.dart';
import 'package:figam_project1/views/screens/android/Collection/couplecollection.dart';
import 'package:figam_project1/views/screens/android/Login/login_E4.dart';
import 'package:figam_project1/views/screens/android/Collection/women_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Gautam());
}

class Gautam extends StatelessWidget {
  const Gautam({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const login_M1(),
        ),
        GetPage(
          name: '/login_M2',
          page: () => const login_M2(),
        ),
        GetPage(
          name: '/login_M3',
          page: () => const login_M3(),
        ),
        GetPage(
          name: '/login_E4',
          page: () => const login_E4(),
        ),
        GetPage(
          name: '/login_E5',
          page: () => const login_E5(),
        ),
        GetPage(
          name: '/deshboard',
          page: () => const deshboard(),
        ),
        GetPage(
          name: '/HomePage',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/different_typewatch',
          page: () => const different_typewatch(),
        ),
        GetPage(
          name: '/offer_page',
          page: () => const offer_page(),
        ),
        GetPage(
          name: '/callpage',
          page: () => const callpage(),
        ),
        GetPage(
          name: '/man_collection',
          page: () => const man_collection(),
        ),
        GetPage(
          name: '/women_collection',
          page: () => const women_collection(),
        ),
        GetPage(
          name: '/couple_collection',
          page: () => const couple_collection(),
        ),
        GetPage(
          name: '/Card_Page',
          page: () => const Card_Page(),
        ),
      ],
    );
  }
}
