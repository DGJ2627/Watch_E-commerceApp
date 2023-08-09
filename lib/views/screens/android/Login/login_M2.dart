
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login_M2 extends StatefulWidget {
  const login_M2({super.key});

  @override
  State<login_M2> createState() => _login_M2State();
}

class _login_M2State extends State<login_M2> {
  int time = 60;

  void start_time(){
    time--;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start_time();
  }
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
                      "Enter OTP",
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
                      "4 Digit OTP send to xxxxxxxxxx",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
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
                      "Enter OTP",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          "0:$time",
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "OTP not received? Resend OTP",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/login_M3');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Text(
                      "Verify OTP",
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
