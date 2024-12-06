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

  static List<Map<String, String>> dummyHomeScreenSliderData = [
    {
      "mainImageLink":
          "https://m.media-amazon.com/images/M/MV5BOTVkOTk2ZmItYjM3OS00ODI1LTllZTUtNjY3MDBmY2U3M2Y5XkEyXkFqcGc@._CR166,91,4744,2668_QL75_UY281_CR0,0,500,281_.jpg",
      "secondImageLink":
          "https://m.media-amazon.com/images/M/MV5BN2VlZjA3ZTktODEzNC00ZDhlLWExMTQtZmZkNjRhNWJhMWNkXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "title": 'The "Skeleton Crew" Share Their Star Wars Obsessions',
      "description": "Wath Our Interview",
    },
    {
      "mainImageLink":
          "https://m.media-amazon.com/images/M/MV5BNGM0MjNjMDgtYTg0Ny00YjA2LTkxYWEtZDE1NDVmOGJhZGM4XkEyXkFqcGdeQXZ3ZXNsZXk@._CR138,149,1385,779_QL75_UY281_CR0,0,500,281_.jpg",
      "secondImageLink":
          "https://m.media-amazon.com/images/M/MV5BY2RlZDc3ZjYtYWJlNC00MzFiLTlmMGItYmUzYjY3Mjc1Yzc2XkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "title": "Rachel Zegler Is 'Snow White'",
      "description": "Watch the Trailer",
    },
    {
      "mainImageLink":
          "https://m.media-amazon.com/images/M/MV5BOWFiODYxOTEtMTcwYi00Y2Y1LTgxNWEtYWYyZDEwOTM3MWRmXkEyXkFqcGdeQWplZmZscA@@._V1_QL40_QL75_UX500_CR0,0,500,281_.jpg",
      "secondImageLink":
          "https://m.media-amazon.com/images/M/MV5BMDgzZDFmYmMtMmViMi00NDA2LWE5NzAtYmM3Nzg0MDg2YzRlXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "title": '5 New TV Characters Who Defined 2024',
      "description": "Sofia Falcone, The Ghoul, and More",
    },
    {
      "mainImageLink":
          "https://m.media-amazon.com/images/M/MV5BNmI1MjAyNTAtNTQ2Ny00NDU2LThmODktYzQ0MWQyYjgxZGU1XkEyXkFqcGc@._CR400,13,3002,1689_QL75_UX500_CR0,0,500,281_.jpg",
      "secondImageLink":
          "https://m.media-amazon.com/images/M/MV5BY2NkMjMzYjctNmY1NS00MzAyLTkwZTgtZTIyNTAwZWM0YjEyXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "title": "'Last Breath'",
      "description": "Watch the Trailer",
    },
    {
      "mainImageLink":
          "https://m.media-amazon.com/images/M/MV5BNjU3ZGQ0YTEtYzU4Ny00ZDE1LTkzNGMtNDhkNTRmMzI0M2ExXkEyXkFqcGdeQWpnYW1i._V1_QL40_QL75_UX500_CR0,0,500,281_.jpg",
      "secondImageLink":
          "https://m.media-amazon.com/images/M/MV5BNjFiZmY0N2EtM2U0OC00YWZjLTlkYzQtYTA3Yzk2ZGFjZTM0XkEyXkFqcGc@._V1_QL75_UY207_CR13,0,140,207_.jpg",
      "title": "'Lilo & Stitch' Get the Live Action Treatment",
      "description": "Watch the Teaser",
    }
  ];

  static List<Map<String, String>> dummyFeaturedTodayData = [
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BNWY4ZmFiMmEtMWY2YS00ZjgzLWI4NjAtMGVhMzcyMjEyNDk0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg",
      "title": "The Most Popular TV Shows of 2024"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BZjY4MTU5MWMtYTZjZC00OGUyLTgzZDgtZGQyY2Q3NDBhZTNkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg",
      "title": "The Most Popular Movies of 2024"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMWQxMzU1ZDQtNDkxMS00NThhLTk5NDMtZjE1MzE5MjBjOGJiXkEyXkFqcGc@._CR589,428,2345,1319_QL75_UY214_CR0,0,380,214_.jpg",
      "title": 'Jenna Ortega in "Wednesday" S2'
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMWI4MzFhOWQtMGU0NC00Yjg0LWFiMjAtMjMzYTQ1Mjg1ODA1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg",
      "title": "Obsessed With These Photos"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BODE5ZjM4NWItMDZlYy00OTI5LTg0OTMtNTM3MjUzZDU0ZTMxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,214_.jpg",
      "title": "TV Tracker: Renewed and Canceled Shows"
    }
  ];

  static List<Map<String, String>> dummyBornTodayData = [
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BZTJiNTYxMGYtYzM5OS00N2EzLTk0NDktZjkwZGIyMzlmYWU2XkEyXkFqcGc@._V1_QL75_UY207_CR0,47,140,207.jpg",
      "name": "Marisa Tomei",
      "age": "60"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BYTJhOWI2OTAtMGY5NC00ZDQ2LWI0YjAtMmM0NDMzY2JkMjg1XkEyXkFqcGc@._V1_QL75_UX140_CR0,12,140,140_.jpg",
      "name": "Nick Peine",
      "age": "34"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMTM0ODY0MTE0NF5BMl5BanBnXkFtZTcwOTQwNTIzOA@@._V1_QL75_UX140_CR0,12,140,140_.jpg",
      "name": 'Tom Hulce',
      "age": "71"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BNDE3MDQ3MGEtOTNmYS00MzlmLTk3MGQtYTM0OGZjZDNhMWQ3XkEyXkFqcGc@._V1_QL75_UX140_CR0,5,140,140_.jpg",
      "name": "Colin Salmon",
      "age": "62"
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMjg1ZGFhNTAtMTQwMC00M2RlLTk5MzgtNDkzZWRlZjdlMDc0XkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,140_.jpg",
      "name": "Oliver Masucci",
      "age": "56"
    }
  ];

  static List<Map<String, String>> dummyTopPicksData = [
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMWJlN2U5MzItNjU4My00NTM2LWFjOWUtOWFiNjg3ZTMxZDY1XkEyXkFqcGc@._V1_QL75_UY207_CR13,0,140,207_.jpg",
      "imdbScore": "8.7",
      "title": 'The Boys',
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMDU2YmNiOTktMjE4Ny00NmFhLWIxZTYtOWY0ZWQ4MWM3YjdiXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "imdbScore": "6.8",
      "title": "Fear the Walking Dead",
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BMzYxNmMyMDItNDIwYi00MzAyLWI2NGUtZmM2N2I5YTNhNzA4XkEyXkFqcGc@._V1_QL75_UY207_CR2,0,140,207_.jpg",
      "imdbScore": "7.7",
      "title": 'Deadpool & Wolverine',
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BNTc0YmQxMjEtODI5MC00NjFiLTlkMWUtOGQ5NjFmYWUyZGJhXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "imdbScore": "8.5",
      "title": "Dune: Part One",
    },
    {
      "imageLink":
          "https://m.media-amazon.com/images/M/MV5BZTA1MDc0YzYtMzRiNy00NjkxLWExNWMtMjIwODBkNzg4ZTAyXkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg",
      "imdbScore": "7.8",
      "title": "The Batman",
    }
  ];
  static void init(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    minSize = screenSize.width * 0.03;
  }
}
