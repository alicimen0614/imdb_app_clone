import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final String containerTitle;
  final bool showButtonOnTop;
  final IconData? icon;
  final double height;
  final bool showBoxShadow;
  const CustomContainer(
      {super.key,
      required this.child,
      this.containerTitle = "",
      this.showButtonOnTop = false,
      this.icon,
      required this.height,
      required this.showBoxShadow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: showBoxShadow == true
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]
              : null),
      child: Column(
        children: [
          if (containerTitle != "")
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      icon == null
                          ? Container(
                              height: 20,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Color(Const.mainColor),
                                  borderRadius: BorderRadius.circular(5)),
                            )
                          : Icon(
                              icon,
                              color: Color(Const.mainColor),
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
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.lightBlue[800]),
                      ))
              ],
            ),
          Container(height: height, color: Colors.white, child: child),
        ],
      ),
    );
  }
}
