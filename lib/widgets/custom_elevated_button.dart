import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final String directory;
  final bool isIconFullFull;
  final Color iconBackgroundColor;
  final double width;

  const CustomElevatedButton(
      {super.key,
      required this.title,
      required this.color,
      required this.textColor,
      this.directory = "",
      this.isIconFullFull = false,
      this.iconBackgroundColor = Colors.white,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: Const.screenSize.height * 0.05,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: !isIconFullFull
                  ? const EdgeInsets.symmetric(horizontal: 10)
                  : const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isIconFullFull && directory != ""
                  ? Container(
                      padding: const EdgeInsets.all(8),
                      color: iconBackgroundColor,
                      height: Const.screenSize.height * 0.05,
                      width: Const.screenSize.height * 0.05,
                      child: Image.asset(
                        directory,
                      ),
                    )
                  : directory != ""
                      ? Image.asset(
                          directory,
                          height: Const.screenSize.height * 0.03,
                        )
                      : const SizedBox.shrink(),
              const Spacer(),
              Text(
                title,
                style: TextStyle(color: textColor, fontSize: 13),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          )),
    );
  }
}
