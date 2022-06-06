import 'package:flutter/material.dart';

import 'package:flutter_tiktok_clone/screens/home_screen/video_player_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> videos = [
    'https://v16-webapp.tiktok.com/acfc452994e3fc619e743575a28c2ba4/629c48cb/video/tos/useast2a/tos-useast2a-ve-0068c001/bf8a83dc679846d696cfdedd7ea92855/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=916&bt=458&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8ZVT~kwe2Nohoyl7Gb&mime_type=video_mp4&qs=0&rc=ZDY1NDxnaGU8aTtnZmg4Z0Bpajd1Z3FmdzxxNjMzNzczM0AwXzYuNDJfXzUxLTNeMDVjYSM1XmFobTZoYGVgLS1kMTZzcw%3D%3D&l=202206050008550101901861391E09D698',
    'https://v16-webapp.tiktok.com/d4d5810b57e8e480df34c6efc51af418/629c489c/video/tos/alisg/tos-alisg-pve-0037/96708a2947af4d5ea379530b62704baf/?a=1988&ch=0&cr=0&dr=0&lr=tiktok&cd=0%7C0%7C1%7C0&cv=1&br=1276&bt=638&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8ZVT~kwe2Nohoyl7Gb&mime_type=video_mp4&qs=0&rc=ZWhkZzM3aTw6NGU1Nzk3OUBpajs5cnhyZXc5NTMzODgzM0BiL2NjMDJjNTIxNDEyYy9fYSNsNS5xMmVhYDZgLS1kLzRzcw%3D%3D&l=202206050008550101901861391E09D698',
    'https://v16-webapp.tiktok.com/7fd4e5de2c650af73a6aa46bb1d1a729/629c4894/video/tos/maliva/tos-maliva-ve-0068c799-us/8ef6830fa2fe4e029efc8a0f1062926a/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=2406&bt=1203&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8ZVT~kwe2Nohoyl7Gb&mime_type=video_mp4&qs=0&rc=NTg5PGgzM2U1aGRpOzs0N0BpM3hsNDM6Zm1sOjMzZzczNEBiYi40MmMwXy4xYzNeYC8wYSNvZTEycjRvMGNgLS1kMS9zcw%3D%3D&l=202206050008550101901861391E09D698',
    'https://v16-webapp.tiktok.com/ea71d2bc9225b2e47b9a5452a232801e/629c4893/video/tos/useast2a/tos-useast2a-pve-0068/0ed157c049f14368aaed747e9137aa61/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=1426&bt=713&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8ZeT~kwe2NYfJyl7Gb&mime_type=video_mp4&qs=0&rc=PGc8aGU3NWY0Ozk2aDszZEBpM21rNDo6ZnFzODMzNzczM0BfNTEuNmBjNjYxLy4vLV4zYSNjcG0zcjRfZW5gLS1kMTZzcw%3D%3D&l=202206050008570101901861391E09D702',
    'https://v16-webapp.tiktok.com/ff3045c46dee30c3b0f395c7da3b106b/629c4882/video/tos/useast2a/tos-useast2a-pve-0068/969439c03625446ba3aef87ec5b395ec/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=2086&bt=1043&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8ZeT~kwe2NYfJyl7Gb&mime_type=video_mp4&qs=0&rc=NzZoOTM0NDg0ZjY0aGc5NUBpM3BlPDZ3M3BkNDMzNzczM0A2XzUxYV81XjUxYy5eMzIuYSNoay9saGpzXm5gLS1kMTZzcw%3D%3D&l=202206050008570101901861391E09D702'
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
