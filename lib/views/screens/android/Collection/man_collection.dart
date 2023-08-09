import 'package:figam_project1/Controller/Colllection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import '../../../../component/Global/List_of_watch.dart';

class man_collection extends StatefulWidget {
  const man_collection({super.key});

  @override
  State<man_collection> createState() => _man_collectionState();
}

class _man_collectionState extends State<man_collection> {
  @override
  Widget build(BuildContext context) {
    ManCollectionWatch_Controller manCollectionWatch_Controller =
        Get.put(ManCollectionWatch_Controller());

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
        ),
        itemCount: ManCollectionWatch_List.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, i) => Stack(
          children: [
            SizedBox(
              height: 500,
              width: 600,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      ManCollectionWatch_List[i].img,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
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
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {
                  manCollectionWatch_Controller.addManWatch(manCollection: ManCollectionWatch_List[i]);
                  Get.snackbar("Add", "Ok");
                },
                icon: const Icon(Icons.bookmark_border,size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
