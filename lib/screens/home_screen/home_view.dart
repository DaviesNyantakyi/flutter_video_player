import 'package:flutter/material.dart';

import 'package:flutter_tiktok_clone/screens/home_screen/video_player_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> videos = [
    'https://v16-webapp.tiktok.com/b65d1d977570144637baf1f6db60f7e1/62968a41/video/tos/useast2a/tos-useast2a-ve-0068c001/509e479a75fa4e5eb5d5f3421431e50c/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=3166&bt=1583&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8ZAG7vwe2NOH6yl7Gb&mime_type=video_mp4&qs=0&rc=ZzQ6NWQ7N2kzZTQ8aTlpOUBpajc0aDo6Zm5qZDMzNzczM0BeLjItYTY2NWIxMTFiL2IxYSMzXmxycjRvYTVgLS1kMTZzcw%3D%3D&l=202205311535140101921662190A2F7345S'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return VideoPlayerScreen(
            videoURL: videos[index],
          );
        },
      ),
    );
  }
}
