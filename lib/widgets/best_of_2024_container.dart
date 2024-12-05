import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';

class BestOf2024Container extends StatelessWidget {
  const BestOf2024Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "The Best Of 2024",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Const.minSize,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    "https://m.media-amazon.com/images/M/MV5BZWI3ZTM0YWEtYmMxMi00ZDkzLTljNTItMGRhMGQ2MDc2OTRmXkEyXkFqcGc@._V1_QL75_UX1000_CR0,0,1000,563_.jpg",
                  ),
                ),
              ),
              const Spacer(),
              const Expanded(
                flex: 12,
                child: Text(
                  "Celebrate the end of another blockbuster year with a closer look at the most popular movies and shows, 2024's biggest stars, IMDb staff picks, and more.",
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
