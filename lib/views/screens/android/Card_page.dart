import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/Colllection.dart';

class Card_Page extends StatefulWidget {
  const Card_Page({super.key});

  @override
  State<Card_Page> createState() => _Card_PageState();
}

class _Card_PageState extends State<Card_Page> {
  // ManCollectionWatch_Controller manCollectionWatch_Controller = Get.put(ManCollectionWatch_Controller());
  // ManCollectionWatch_Controller man_CollectionWatch_Controller = Get.lazyPut(() => ManCollectionWatch_Controller());
  ManCollectionWatch_Controller MANCollectionWatch_Controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) => Card(
            elevation: 3,
            child: Column(
              children: [
                Image.asset("${MANCollectionWatch_Controller.ManWatchCollection_List[index].img}"),
                const SizedBox(height: 10,),
                Text("${MANCollectionWatch_Controller.ManWatchCollection_List[index].price}")
              ],
            )
          ),
          itemCount:
              MANCollectionWatch_Controller.ManWatchCollection_List.length,
        ),
      ),
    );
  }
}
