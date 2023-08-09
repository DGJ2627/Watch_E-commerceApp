import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              height: 350,
              width: 600,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          height: 300,
                          child: Image.asset(
                            "Assets/images/wathc_banner1.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        height: 300,
                        child: Image.asset(
                          "Assets/images/watch_banner2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        height: 300,
                        child: Image.asset(
                          "Assets/images/watch_banner4.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        height: 250,
                        child: Image.asset(
                          "Assets/images/offer_banner4.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Exciting Offer",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              width: 600,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        height: 250,
                        child: Image.asset(
                          "Assets/images/offer_banner1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        height: 250,
                        child: Image.asset(
                          "Assets/images/offer_banner2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        height: 250,
                        child: Image.asset(
                          "Assets/images/offer_banner3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Shop Watch",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 230,
              width: 400,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/man_collection');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              height: 150,
                              child: Image.asset(
                                "Assets/images/men_watch_homepage.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text(
                            "For Man",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/women_collection');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              height: 150,
                              child: Image.asset(
                                "Assets/images/woman_watch_homepage.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text(
                            "For Women",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/couple_collection');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              height: 150,
                              child: Image.asset(
                                "Assets/images/couple_watch_homepage.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text(
                            "For Couple",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
