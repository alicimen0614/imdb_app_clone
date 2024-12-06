import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';
import 'package:imdb_clone/screens/sign_in_page.dart';
import 'package:imdb_clone/widgets/best_of_2024_container.dart';
import 'package:imdb_clone/widgets/custom_card.dart';
import 'package:imdb_clone/widgets/custom_container.dart';
import 'package:imdb_clone/widgets/custom_elevated_button.dart';

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
            CarouselSlider.builder(
              itemCount: Const.dummyHomeScreenSliderData.length,
              options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  height: Const.screenSize.height * 0.36,
                  viewportFraction: 1),
              itemBuilder: (context, index, realIndex) {
                return Container(
                  color: Colors.grey.shade200,
                  child: Stack(
                    children: [
                      SizedBox(
                          height: Const.screenSize.height * 0.26,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Image.network(
                                Const.dummyHomeScreenSliderData[index]
                                    ["mainImageLink"]!,
                                height: Const.screenSize.height * 0.26,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.play_circle_outline,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                        height: Const.screenSize.height * 0.18,
                        width: Const.screenSize.width * 0.26,
                        left: Const.minSize,
                        bottom: Const.minSize,
                        child: Card(
                          shape: const BeveledRectangleBorder(),
                          child: Image.network(
                            Const.dummyHomeScreenSliderData[index]
                                ["secondImageLink"]!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        left: Const.screenSize.width * 0.32,
                        right: 0,
                        bottom: Const.screenSize.height * 0.015,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Const.dummyHomeScreenSliderData[index]["title"]!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 14),
                            ),
                            Text(
                              Const.dummyHomeScreenSliderData[index]
                                  ["description"]!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.black54),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: Const.screenSize.height * 0.0025,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.thumb_up_outlined,
                                  size: 15,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: Const.screenSize.height * 0.0025,
                                ),
                                const Text(
                                  "123",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(
                                  width: Const.minSize,
                                ),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: Const.screenSize.height * 0.0025,
                                ),
                                const Text(
                                  "242",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: Const.minSize,
            ),
            const BestOf2024Container(),
            SizedBox(
              height: Const.minSize,
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
                    itemCount: Const.dummyFeaturedTodayData.length,
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
                              child: Image.network(
                                Const.dummyFeaturedTodayData[index]
                                    ["imageLink"]!,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: Const.minSize,
                            ),
                            Text(
                              Const.dummyFeaturedTodayData[index]["title"]!,
                              style: const TextStyle(fontSize: 12),
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
                    itemCount: Const.dummyBornTodayData.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        imageLink: Const.dummyBornTodayData[index]
                            ["imageLink"]!,
                        title: Const.dummyBornTodayData[index]["name"]!,
                        height: Const.screenSize.height * 0.28,
                        width: Const.screenSize.width * 0.35,
                        pictureHeight: Const.screenSize.height * 0.18,
                        age: Const.dummyBornTodayData[index]["age"]!,
                      );
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(Const.mainColor),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3))),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
              height: Const.screenSize.height * 0.55,
              containerTitle: "Top picks for you",
              showButtonOnTop: true,
              showBoxShadow: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text("TV shows and movies just for you"),
                  ),
                  SizedBox(
                    height: Const.minSize,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomElevatedButton(
                      title: "Improve suggestions",
                      color: Color(Const.mainColor),
                      textColor: Colors.black,
                      width: Const.screenSize.width - 180,
                    ),
                  ),
                  SizedBox(
                    height: Const.minSize,
                  ),
                  SizedBox(
                    height: Const.screenSize.height * 0.4,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Const.dummyTopPicksData.length,
                      itemBuilder: (context, index) => CustomCard(
                        height: Const.screenSize.height * 0.4,
                        width: Const.screenSize.width * 0.4,
                        pictureHeight: Const.screenSize.height * 0.22,
                        imageLink: Const.dummyTopPicksData[index]["imageLink"]!,
                        title: Const.dummyTopPicksData[index]["title"]!,
                        imdbScore: Const.dummyTopPicksData[index]["imdbScore"]!,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Const.minSize,
            )
          ],
        ),
      ),
    );
  }
}
