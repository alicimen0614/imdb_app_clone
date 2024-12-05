import 'package:flutter/material.dart';

class Const {
  static late Size screenSize;
  static late double minSize;
  static int mainColor = 0xFFF5C518;
  static List<Map<String, String>> dummyRecentlyViewedData = [
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BZTJiNTYxMGYtYzM5OS00N2EzLTk0NDktZjkwZGIyMzlmYWU2XkEyXkFqcGc@._V1_QL75_UY207_CR0,47,140,207.jpg",
      "title": "Marisa Tomei"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BM2ZiNThlNzItNmY3Ny00NjA2LWJlMjItNTk1NDI3MDMyMTk4XkEyXkFqcGc@._V1_QL75_UY207_CR8,0,140,207_.jpg",
      "title": "Peaky Blinders"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BOWJhYjdjNWEtMWFmNC00ZjNkLThlZGEtN2NkM2U3NTVmMjZkXkEyXkFqcGc@._V1_QL75_UY207_CR13,0,140,207_.jpg",
      "title": "Arcane"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BM2Y3MTBiYmEtNDYzNy00OTU5LTk2MWItOWFlNDZlMzFhNjYxXkEyXkFqcGc@._V1_QL75_UY207_CR1,0,140,207_.jpg",
      "title": "Stranger Things"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMzYxNmMyMDItNDIwYi00MzAyLWI2NGUtZmM2N2I5YTNhNzA4XkEyXkFqcGc@._V1_QL75_UY207_CR2,0,140,207_.jpg",
      "title": "Deadpool & Wolverine"
    }
  ];

  static void init(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    minSize = screenSize.width * 0.03;
  }
}
