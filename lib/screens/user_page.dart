import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';
import 'package:imdb_clone/screens/sign_in_page.dart';
import 'package:imdb_clone/widgets/custom_card.dart';
import 'package:imdb_clone/widgets/custom_container.dart';
import 'package:imdb_clone/widgets/custom_outlined_button.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserInfoCard(context),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: true,
                containerTitle: "Recently viewed",
                height: Const.screenSize.height * 0.37,
                showBoxShadow: true,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CustomCard(
                        imageLink: Const.dummyRecentlyViewedData[index]
                            ["imageLink"]!,
                        title: Const.dummyRecentlyViewedData[index]["title"]!,
                        height: Const.screenSize.height * 0.35,
                        width: Const.screenSize.width * 0.4,
                        pictureHeight: Const.screenSize.height * 0.25);
                  },
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Ratings",
                height: Const.screenSize.height * 0.2,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Icon(
                      Icons.stars_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No ratings yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const CustomOutlinedButton(text: "Rate shows and movies")
                  ],
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Insights",
                height: Const.screenSize.height * 0.2,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No insights yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "Start rating to see your rating trends.",
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const CustomOutlinedButton(text: "Rate shows and movies")
                  ],
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Watchlist",
                height: Const.screenSize.height * 0.2,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No Watchlist yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "Create a Watchlist to track movies and shows you want to watch.",
                      style: TextStyle(fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const CustomOutlinedButton(text: "Start your Watchlist")
                  ],
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Lists",
                height: Const.screenSize.height * 0.15,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No lists yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const CustomOutlinedButton(text: "Create a list")
                  ],
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Reviews",
                height: Const.screenSize.height * 0.05,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No reviews yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Interests",
                height: Const.screenSize.height * 0.27,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Icon(
                      Icons.add_circle_outline_rounded,
                      size: 40,
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No interests yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "Follow your interests to discover the best and the latest of what you love.",
                      style: TextStyle(fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const CustomOutlinedButton(text: "Browse interests")
                  ],
                )),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
                showButtonOnTop: false,
                containerTitle: "Favorite people",
                height: Const.screenSize.height * 0.27,
                showBoxShadow: true,
                child: Column(
                  children: [
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Icon(
                      Icons.favorite_border,
                      size: 40,
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "No favorite people yet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const Text(
                      "Stay updated on your favorite actors, directors, and more.",
                      style: TextStyle(fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: Const.minSize,
                    ),
                    const CustomOutlinedButton(text: "Add favorite people")
                  ],
                ))
          ],
        ),
      ),
    );
  }

  _buildUserInfoCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.grey.shade50, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.account_circle,
                color: Color(Const.mainColor),
              ),
              SizedBox(
                width: Const.minSize,
              ),
              const Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ))
            ],
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
                minimumSize:
                    Size(double.infinity, Const.screenSize.height * 0.06),
                shape: const BeveledRectangleBorder()),
            child: const Text(
              "Sign in / Sign up",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: Const.minSize,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildUserSelectionsContainer("Ratings"),
              SizedBox(
                width: Const.minSize,
              ),
              _buildUserSelectionsContainer("Watchlist"),
              SizedBox(
                width: Const.minSize,
              ),
              _buildUserSelectionsContainer("Lists"),
              SizedBox(
                width: Const.minSize,
              ),
              _buildUserSelectionsContainer("More"),
            ],
          )
        ],
      ),
    );
  }

  _buildUserSelectionsContainer(String title) {
    return Container(
      height: Const.screenSize.height * 0.07,
      width: Const.screenSize.width * 0.21,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Column(
        children: [
          Text(title),
          const Spacer(),
          title != "More" ? const Text("0") : const Icon(Icons.grid_view),
          const Spacer()
        ],
      ),
    );
  }
}
