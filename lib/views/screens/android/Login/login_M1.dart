
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login_M1 extends StatefulWidget {
  const login_M1({super.key});

  @override
  State<login_M1> createState() => _login_M1State();
}

class _login_M1State extends State<login_M1> {
  final GlobalKey<FormState> login_key = GlobalKey<FormState>();
  int initiaLayer = 0;
  bool mobile = true;
  bool? email;
  final countrypicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  TextEditingController phone_controller = TextEditingController();
  TextEditingController Email_controller = TextEditingController();
  int? phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Image.asset(
                "Assets/images/new_login_1.jpg",
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login / Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            initiaLayer = 0;
                            mobile = true;
                            email = false;
                          });
                        },
                        child: Text("Mobile",
                            style: (mobile == true)
                                ? const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueAccent,
                                    decoration: TextDecoration.underline,
                                  )
                                : const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            initiaLayer = 1;
                            mobile = false;
                            email = true;
                          });
                        },
                        child: Text(
                          "E-Mail",
                          style: (email == true)
                              ? const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueAccent,
                                  decoration: TextDecoration.underline)
                              : const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                IndexedStack(
                  index: initiaLayer,
                  children: [
                    //mobile
                    SizedBox(
                      height: 400,
                      width: 600,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Enter Mobile number for OTP",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Form(
                            key: login_key,
                            child: TextFormField(
                              controller: phone_controller,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your phone no.";
                                } else if (val.length != 10) {
                                  return "Enter 10  Digit Phone no.";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                phone = int.parse(val!);
                              },
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              maxLines: 1,
                              decoration: InputDecoration(
                                labelText: "Enter Number",
                                border: InputBorder.none,
                                labelStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 6),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      GestureDetector(
                                        onTap: () async {
                                          final Code = await countrypicker
                                              .showPicker(context: context);
                                          setState(() {
                                            countryCode = Code;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              child: countryCode != null
                                                  ? countryCode!.flagImage()
                                                  : null,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 6),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.black),
                                              child: Text(
                                                countryCode?.dialCode ?? "+1",
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "By Continuing. I agree to Terms of \n    use & Privacy Policy",
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (phone == null) {
                                Get.toNamed('/login_M2');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Enter Number"),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child: const Text(
                                "Request OTP",
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

                    //Email
                    SizedBox(
                      height: 400,
                      width: 600,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Enter E-Mail ID for OTP",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: Email_controller,
                              decoration: const InputDecoration(
                                hintText: "E-mail ID",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "By Continuing. I agree to Terms of \n    use & Privacy Policy",
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/login_E4');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child: const Text(
                                "Request OTP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
