import 'package:flutter/material.dart';

import 'package:flutter_tiktok_clone/screens/home_screen/video_player_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> videos = [
    'https://v16-webapp.tiktok.com/975fb444bc74d90e25ee6f3563cf549b/62958d40/video/tos/useast2a/tos-useast2a-ve-0068c001/839c6c5969c54180a7f71a848d62c7ee/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=1838&bt=919&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Z6ztvwe2N-fwyl7Gb&mime_type=video_mp4&qs=0&rc=M2g7M2U4ZWU0NmZkNDw6N0Bpajc4ZTM6ZmRqODMzNzczM0A0NC1jYDU1XzQxXy8yXjEwYSNwYmBucjQwYW1gLS1kMTZzcw%3D%3D&l=202205302136170102171342002463E444',
    'https://v16-webapp.tiktok.com/87602e5fc1bf60b120e385e10320ecd4/62958d44/video/tos/useast2a/tos-useast2a-ve-0068c002/90cdd8c4e74e48738abb939154df7a2f/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=4998&bt=2499&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Ziztvwe2NsY0yl7Gb&mime_type=video_mp4&qs=0&rc=PDw7aDgzO2llaGY4aDtnZEBpMzdzOHdzcGo7djMzZTczM0A1MGNgYi8uNV4xLy5fNTY1YSM2Y2hsL2UxNWhfLS1iMTZzcw%3D%3D&l=202205302136180101921650790E64BA14',
    'https://v16-webapp.tiktok.com/21def4e4a57445ebda225f095ce1fd70/62958ddf/video/tos/useast2a/tos-useast2a-ve-0068c002/7990d59c955745a58c07e6f5c2ea3048/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=1242&bt=621&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Ziztvwe2NsY0yl7Gb&mime_type=video_mp4&qs=0&rc=OGRmaDRpZTVlZjw8Zjs0OkBpam9waTQ6ZmR4ODMzNzczM0A0NmEtYzU2NjIxMDJeMi4tYSMtZzU1cjQwcDJgLS1kMTZzcw%3D%3D&l=202205302136180101921650790E64BA14',
    'https://v16-webapp.tiktok.com/8d333e56052d4b60fef6b4d4c3892662/62958d6d/video/tos/useast2a/tos-useast2a-ve-0068c002/c70c3bbb0365422ea920c769deb8fabf/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=1716&bt=858&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Ziztvwe2NsY0yl7Gb&mime_type=video_mp4&qs=0&rc=ZWVmO2dlZjhoNmc4Mzo1M0Bpanc5Ojg6Zm4zOTMzNzczM0BiMjQyXi4tXzExX2AzYy8yYSMtMGFwcjRfXjVgLS1kMTZzcw%3D%3D&l=202205302136180101921650790E64BA14',
    'https://v16-webapp.tiktok.com/de9a3cdbc254bcb0cf8675e2a537f826/62958d42/video/tos/maliva/tos-maliva-ve-0068c799-us/fb022384de214b828fe44882eb57e09e/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=3946&bt=1973&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Ziztvwe2NsY0yl7Gb&mime_type=video_mp4&qs=0&rc=OTM4ZDtoNGVoZmRkO2k1N0BpM3VwOjw6ZmlvOzMzZzczNEBiNGM2L2IwNTAxYGI1Ly8tYSNfZWpzcjRva3BgLS1kMS9zcw%3D%3D&l=202205302136180101921650790E64BA14',
    'https://v16-webapp.tiktok.com/28aed9e173925a43db229d80f91021e4/62958d59/video/tos/useast2a/tos-useast2a-pve-0068/26c97d76ff284ae7be5cad59bc741525/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=3674&bt=1837&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Ziztvwe2NsY0yl7Gb&mime_type=video_mp4&qs=0&rc=Ozc5ZWdkOTo0OTw3PDVoOUBpM3Vrdmd0ZDttNDMzZDczM0AvYjI2XjVfX2ExYzBeXjIvYSMtbHFjamY0a15gLS0zMTZzcw%3D%3D&l=202205302136180101921650790E64BA14',
    'https://v16-webapp.tiktok.com/fdb72f4d7c90291cfce22e335b59f495/62958d62/video/tos/useast2a/tos-useast2a-ve-0068c003/a33e22942f8949cbb7a749797b7bb459/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=1610&bt=805&btag=80000&cs=0&ds=3&ft=eXd.6HA9Myq8Ziztvwe2NsY0yl7Gb&mime_type=video_mp4&qs=0&rc=aWVoOWdpZzY5PDNlN2hlM0BpM3Izbzo6OW03MzMzZjczM0BhMGBhMS8yNV8xLS5eYmA0YSNoXm8wNjRkaC5gLS01MTZzcw%3D%3D&l=202205302136180101921650790E64BA14'
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
