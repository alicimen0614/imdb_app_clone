import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';
import 'package:imdb_clone/widgets/best_of_2024_container.dart';
import 'package:imdb_clone/widgets/custom_container.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        toolbarHeight: Const.screenSize.height * 0.1,
        title: const TextField(
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            icon: Icon(Icons.search),
            labelText: "Search IMDb",
            hintText: "Search IMDb",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: Const.minSize,
            ),
            const BestOf2024Container(),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
              showBoxShadow: false,
              height: Const.screenSize.height * 0.4,
              containerTitle: "Popular interests",
              icon: Icons.local_fire_department,
              showButtonOnTop: true,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: Const.screenSize.height * 0.19,
                    crossAxisCount: 2),
                children: [
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMTM2MzY1ODc1Nl5BMl5BanBnXkFtZTcwNTg4OTY3Nw@@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Superhero"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMjIzMjE3MTI1NF5BMl5BanBnXkFtZTgwNzE3MTgyNDM@._V1_QL75_UX500_CR0,47,500,281_.jpg",
                      title: "Coming-of-Age"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BZTQ1MmFmYmUtNWI4YS00YjJhLTk0YzgtZGM4ODQ4N2ZkYTAzXkEyXkFqcGc@._V1_QL75_UY281_CR85,0,500,281_.jpg",
                      title: "Slasher Horror"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BOWNmOTliZjgtMmRkYy00Zjk5LThiMWQtNDYxZmUzN2QzNzdiXkEyXkFqcGc@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Raunchy Comedy"),
                ],
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
              showBoxShadow: false,
              height: Const.screenSize.height * 0.4,
              containerTitle: "Movies",
              icon: Icons.local_movies,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: Const.screenSize.height * 0.19,
                    crossAxisCount: 2),
                children: [
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMTM2MzY1ODc1Nl5BMl5BanBnXkFtZTcwNTg4OTY3Nw@@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Superhero"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMjIzMjE3MTI1NF5BMl5BanBnXkFtZTgwNzE3MTgyNDM@._V1_QL75_UX500_CR0,47,500,281_.jpg",
                      title: "Coming-of-Age"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BZTQ1MmFmYmUtNWI4YS00YjJhLTk0YzgtZGM4ODQ4N2ZkYTAzXkEyXkFqcGc@._V1_QL75_UY281_CR85,0,500,281_.jpg",
                      title: "Slasher Horror"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BOWNmOTliZjgtMmRkYy00Zjk5LThiMWQtNDYxZmUzN2QzNzdiXkEyXkFqcGc@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Raunchy Comedy"),
                ],
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
              showBoxShadow: false,
              height: Const.screenSize.height * 0.4,
              containerTitle: "Streaming & TV",
              icon: Icons.tv,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: Const.screenSize.height * 0.19,
                    crossAxisCount: 2),
                children: [
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMTM2MzY1ODc1Nl5BMl5BanBnXkFtZTcwNTg4OTY3Nw@@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Superhero"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMjIzMjE3MTI1NF5BMl5BanBnXkFtZTgwNzE3MTgyNDM@._V1_QL75_UX500_CR0,47,500,281_.jpg",
                      title: "Coming-of-Age"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BZTQ1MmFmYmUtNWI4YS00YjJhLTk0YzgtZGM4ODQ4N2ZkYTAzXkEyXkFqcGc@._V1_QL75_UY281_CR85,0,500,281_.jpg",
                      title: "Slasher Horror"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BOWNmOTliZjgtMmRkYy00Zjk5LThiMWQtNDYxZmUzN2QzNzdiXkEyXkFqcGc@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Raunchy Comedy"),
                ],
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
              showBoxShadow: false,
              height: Const.screenSize.height * 0.4,
              containerTitle: "Celebs",
              icon: Icons.tv,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: Const.screenSize.height * 0.19,
                    crossAxisCount: 2),
                children: [
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BZTJiNTYxMGYtYzM5OS00N2EzLTk0NDktZjkwZGIyMzlmYWU2XkEyXkFqcGc@._V1_QL75_UY207_CR0,47,500,281.jpg",
                      title: "Marisa Tomei"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BZTJiNTYxMGYtYzM5OS00N2EzLTk0NDktZjkwZGIyMzlmYWU2XkEyXkFqcGc@._V1_QL75_UY207_CR0,47,500,281.jpg",
                      title: "Marisa Tomei"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BZTJiNTYxMGYtYzM5OS00N2EzLTk0NDktZjkwZGIyMzlmYWU2XkEyXkFqcGc@._V1_QL75_UY207_CR0,47,500,281.jpg",
                      title: "Marisa Tomei"),
                ],
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            CustomContainer(
              showBoxShadow: false,
              height: Const.screenSize.height * 0.8,
              containerTitle: "Awards & Events",
              icon: Icons.stars_rounded,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: Const.screenSize.height * 0.19,
                    crossAxisCount: 2),
                children: [
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BYzA3MjQ4M2MtMjgyNi00OGI2LTljZDEtZjY5ZWIyZmZlOGNhXkEyXkFqcGdeQWFsZWxvZw@@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Oscars"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BYTliYWE1ZDYtYTZlOC00NjcxLWJmNzItYmU5N2U0NDNiOTkyXkEyXkFqcGdeQWFybm8@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Sundance"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BYTliYWE1ZDYtYTZlOC00NjcxLWJmNzItYmU5N2U0NDNiOTkyXkEyXkFqcGdeQWFybm8@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Cannes"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BM2U5Y2EwOTctMDk4YS00ZGRhLTliMjMtMzAxNTM5ZDA0ODllXkEyXkFqcGc@._CR382,406,4000,2250_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "San Diego Comic-Con"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BODZhZGMzODMtMWRlMi00ZjU0LThmNDYtNjM3N2RhZTYxYzdjXkEyXkFqcGc@._CR16,91,4805,2703_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Emmys"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BYTMwMDY2ZmQtMzU2Ny00MTAzLWI0NDEtOGJhODM3OThiZDNjXkEyXkFqcGdeQWFsZWxvZw@@._V1_QL75_UX500_CR0,0,500,281_.jpg",
                      title: "Awards Central"),
                  _itemCardBuilder(
                      imageLink:
                          "https://m.media-amazon.com/images/M/MV5BMTgzM2Q5MDQtYzM5ZC00YmJkLWEyZjQtOWJkZmU5YjZlYzYwXkEyXkFqcGdeQWFybm8@._V1_QL75_UX500_CR0,26,500,281_.jpg",
                      title: "Festival Central"),
                ],
              ),
            ),
            CustomContainer(
              showBoxShadow: false,
              height: Const.screenSize.height * 0.4,
              containerTitle: "Community",
              icon: Icons.public,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: Const.screenSize.height * 0.19,
                    crossAxisCount: 2),
                children: [
                  _itemCardBuilder(
                      color: Colors.blue.shade900,
                      icon: Icons.stars,
                      title: "Help center"),
                  _itemCardBuilder(
                      color: Colors.teal,
                      icon: Icons.add_comment,
                      title: "Contributor zone"),
                  _itemCardBuilder(
                      color: Colors.red.shade900,
                      icon: Icons.ballot,
                      title: "Polls"),
                ],
              ),
            ),
            SizedBox(
              height: Const.minSize,
            ),
          ],
        ),
      ),
    );
  }

  _itemCardBuilder(
      {String imageLink = "",
      String title = "",
      Color color = Colors.teal,
      IconData icon = Icons.stars}) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: imageLink != ""
                    ? Image.network(
                        imageLink,
                        width: double.infinity,
                        fit: BoxFit.fitHeight,
                      )
                    : Container(
                        color: color,
                        height: Const.screenSize.height * 0.115,
                        width: double.infinity,
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 50,
                        ),
                      )),
            SizedBox(
              height: Const.minSize,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
