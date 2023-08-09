import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

import '../../../../Controller/Colllection.dart';
import '../../../../component/Global/Global_var.dart';
import '../../../../component/Global/List_of_watch.dart';

class couple_collection extends StatelessWidget {
  const couple_collection({super.key});

  @override
  Widget build(BuildContext context) {
    CoupleCollectionWatch_Controller coupleCollectionWatch_Controller =
    Get.put(CoupleCollectionWatch_Controller());

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      // body: ListView.builder(
      //   itemCount: ManCollectionWatch_List.length,
      //   itemBuilder:(context, i) => Card(
      //     child: ListTile(
      //       title: Text("${ManCollectionWatch_List[i].offer}"),
      //       subtitle: Text("${ManCollectionWatch_List[i].price}"),
      //       leading: Text("${ManCollectionWatch_List[i].id}"),
      //     ),
      //   ),),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
        ),
        itemCount: CoupleCollectionWatch_List.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, i) => Stack(
          children: [
            SizedBox(
              height: 500,
              width: 600,
              child: Image.asset(
                CoupleCollectionWatch_List[i].img,
                fit: BoxFit.cover,
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 50,
                width: 50,
                child: LikeButton(
                  size: 30,
                  animationDuration: Duration(microseconds: 1000),
                  // likeCount: LikeCount,
                  // countPostion: CountPostion.left,

                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
