import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({super.key});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {
  bool isMuted = false;
  final List<Map<String, String>> videos = const [
    {
      "videoUrl": "https://www.youtube.com/shorts/-XXKtj7tAQ4",
      "title":
          "#JudeLaw and the #SkeletonCrew cast share their favorite #StarWars characters!"
    },
    {
      "videoUrl": "https://www.youtube.com/shorts/Uaf7cWvvtLE",
      "title": "#OliviaWilliams knows how to find her light! ✨ #DuneProphecy"
    },
    {
      "videoUrl": "https://www.youtube.com/shorts/OVzpiY8myWM",
      "title":
          "When you think about it, this explanation makes so much sense. #TomHardy #VenomtheLastDance"
    },
    {
      "videoUrl": "https://www.youtube.com/shorts/nVwOzHV5QF4",
      "title": "The mini teapot! #JudeLaw and #SkeletonCrew"
    },
    {
      "videoUrl": "https://www.youtube.com/shorts/6qmqDAd52Yw",
      "title":
          "Why is #Maui so lovable? 💪🌊 Swagger, energy, and... tattoos! #DwayneJohnson #Moana "
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: videos.length,
          itemBuilder: (context, index) {
            String videoId =
                YoutubePlayer.convertUrlToId(videos[index]["videoUrl"]!)!;
            return YoutubePlayerBuilder(
              player: YoutubePlayer(
                progressColors: ProgressBarColors(
                    playedColor: Color(Const.mainColor),
                    handleColor: Color(Const.mainColor)),
                controller: YoutubePlayerController(
                  initialVideoId: videoId,
                  flags: YoutubePlayerFlags(
                    autoPlay: true,
                    loop: true,
                    mute: isMuted,
                    disableDragSeek: true,
                  ),
                ),
                showVideoProgressIndicator: true,
              ),
              builder: (context, player) {
                return Stack(
                  children: [
                    Positioned.fill(child: player),
                    Positioned(
                      bottom: 20,
                      left: 5,
                      right: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          videos[index]["title"]!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: -16,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isMuted = !isMuted;
                                });
                              },
                              icon: Icon(
                                isMuted ? Icons.volume_off : Icons.volume_up,
                                color: Colors.white,
                              ))),
                    ),
                    Positioned(
                      bottom: 60,
                      right: -16,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                color: Colors.white,
                              ))),
                    ),
                    Positioned(
                      bottom: 110,
                      right: -16,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )),
                            const Text(
                              "50",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 170,
                      right: -16,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.thumb_down_alt_outlined,
                                color: Colors.grey,
                              ))),
                    ),
                    Positioned(
                      bottom: 230,
                      right: -16,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.grey,
                                  )),
                              const Text(
                                "262",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: ShortsPage()));
