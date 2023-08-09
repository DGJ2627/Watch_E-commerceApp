import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login_E5 extends StatefulWidget {
  const login_E5({super.key});

  @override
  State<login_E5> createState() => _login_E5State();
}

class _login_E5State extends State<login_E5> {
  bool isMR = true;
  TextEditingController Name_Controller = TextEditingController();
  TextEditingController lastname_Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Image.asset(
                "Assets/images/new_login_1.jpg",
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Title",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(),
                          ),
                        ),
                        child: (isMR)
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMR = false;
                                  });
                                },
                                child: const Text(
                                  "MR ",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMR = true;
                                  });
                                },
                                child: const Text(
                                  "MS ",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: TextField(
                          controller: Name_Controller,
                          decoration: const InputDecoration(
                            hintText: "Enter Name",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: lastname_Controller,
                    decoration: const InputDecoration(
                      hintText: "Last Name",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email-Id",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "XYZ@gmail.com",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/deshboard');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
