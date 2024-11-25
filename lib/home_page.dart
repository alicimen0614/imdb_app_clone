import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';

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
            _listViewContainerBuilder(
                widgetItem: ListView.builder(
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
                    }),
                showTextOnTop: false),
            SizedBox(
              height: Const.minSize,
            ),
            _listViewContainerBuilder(
                widgetItem: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            height: Const.screenSize.height * 0.28,
                            width: Const.screenSize.width * 0.35,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                    height: Const.screenSize.height * 0.18,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      child: Image.asset(
                                        "assets/born_today.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Joel Kinnaman",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "45",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                showTextOnTop: true,
                containerTitle: "Born today",
                showButtonOnTop: true),
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
            _listViewContainerBuilder(
                widgetItem: Padding(
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
                ),
                showTextOnTop: true,
                containerTitle: "From your Watchlist",
                showButtonOnTop: false)
          ],
        ),
      ),
    );
  }

  Container _listViewContainerBuilder(
      {required Widget widgetItem,
      required bool showTextOnTop,
      String containerTitle = "",
      bool showButtonOnTop = false}) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Column(
        children: [
          if (showTextOnTop != false)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Color(Const.mainColor),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        width: Const.minSize,
                      ),
                      Text(
                        containerTitle,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                if (showButtonOnTop == true)
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Colors.blue),
                      ))
              ],
            ),
          Container(
              height: showTextOnTop == false
                  ? Const.screenSize.height * 0.26
                  : Const.screenSize.height * 0.3,
              color: Colors.white,
              child: widgetItem),
        ],
      ),
    );
  }
}
