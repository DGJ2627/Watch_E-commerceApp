import 'package:flutter/material.dart';

class offer_page extends StatefulWidget {
  const offer_page({super.key});

  @override
  State<offer_page> createState() => _offer_pageState();
}

class _offer_pageState extends State<offer_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Brands",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 200,
                width: 600,
                child: Image.asset("Assets/images/company_b1.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 200,
                width: 600,
               child: Image.asset("Assets/images/company_b7.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 200,
                width: 600,
                child: Image.asset("Assets/images/company_b3.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 200,
                width: 600,
                child: Image.asset("Assets/images/company_b4.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 200,
                width: 600,
                child: Image.asset("Assets/images/company_b5.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


