import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';
import 'package:imdb_clone/widgets/custom_card.dart';
import 'package:imdb_clone/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade200,
              height: Const.screenSize.height * 0.34,
              child: Stack(
                children: [
                  SizedBox(
                      height: Const.screenSize.height * 0.24,
                      child: Image.asset(
                        "assets/topImage.jpg",
                        height: Const.screenSize.height * 0.23,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                    height: Const.screenSize.height * 0.18,
                    width: Const.screenSize.width * 0.26,
                    left: Const.minSize,
                    bottom: Const.minSize,
                    child: Card(
                      shape: const BeveledRectangleBorder(),
                      child: Image.asset(
                        "assets/poster.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: Const.screenSize.width * 0.3,
                    right: 0,
                    bottom: Const.screenSize.height * 0.025,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What 'Gladiator II' Stars Think of Ridley Scott's Directing Style",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "Watch the Interview",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),
                        Icon(
                          Icons.thumb_up,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.all(5),
                    hintText: "Search for shows, movies, people...",
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5)),
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Featured today",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            CustomContainer(
                showBoxShadow: true,
                height: Const.screenSize.height * 0.26,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: Const.screenSize.height * 0.2,
                              width: Const.screenSize.width * 0.7,
                              child: Image.asset(
                                "assets/featured.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: Const.minSize,
                            ),
                            const Text(
                              "15 Fall Movies You Need to Know About",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      );
                    })),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showBoxShadow: true,
                height: Const.screenSize.height * 0.3,
                containerTitle: "Born today",
                showButtonOnTop: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CustomCard(
                          imageLink: Const.dummyRecentlyViewedData[0]
                              ["imageLink"]!,
                          title: Const.dummyRecentlyViewedData[0]["title"]!,
                          height: Const.screenSize.height * 0.28,
                          width: Const.screenSize.width * 0.35,
                          pictureHeight: Const.screenSize.height * 0.18);
                    })),
            SizedBox(
              height: Const.minSize,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "What to watch",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showBoxShadow: true,
                height: Const.screenSize.height * 0.3,
                containerTitle: "From your Watchlist",
                showButtonOnTop: false,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.bookmark_add,
                        size: 50,
                      ),
                      SizedBox(
                        height: Const.minSize,
                      ),
                      const Text(
                        "Sign in to access your Watchlist",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: Const.minSize,
                      ),
                      const Text(
                        "Save shows and movies to keep track of what you want to watch.",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: Const.minSize,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(Const.mainColor),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3))),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
