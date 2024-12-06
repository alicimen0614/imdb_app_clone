import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final double width;
  final double pictureHeight;
  final String imageLink;
  final String title;
  final String? age;
  final String imdbScore;

  const CustomCard(
      {super.key,
      required this.height,
      required this.width,
      required this.pictureHeight,
      required this.imageLink,
      required this.title,
      this.age,
      this.imdbScore = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: height,
          width: width,
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
                  height: pictureHeight,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.network(
                        imageLink,
                        fit: BoxFit.cover,
                      )),
                ),
                if (imdbScore != "")
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(Const.mainColor),
                        ),
                        SizedBox(
                          width: Const.screenSize.width * 0.01,
                        ),
                        Text(
                          imdbScore,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                const Spacer(),
                if (age != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      age!,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
