
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro_Page extends StatefulWidget {
  const Intro_Page({super.key});

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "",
            body: "",
            image: Image.network(""),
          ),
        ],
        scrollPhysics: const BouncingScrollPhysics(),
        onDone: (){
          Navigator.of(context).pushNamed('HomePage');
        },
        onSkip: (){
          Navigator.of(context).pushNamed('HomePage');
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.navigate_next),
        done: const Text("Done"),
      ),
    );
  }
}
