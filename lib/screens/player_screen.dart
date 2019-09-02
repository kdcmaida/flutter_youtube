import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_youtube/model/playlist.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Player extends StatefulWidget {
  final PlayList playList;
  Player(this.playList);

  @override
  _PlayerState createState() => _PlayerState(this.playList);

}

class _PlayerState extends State<Player> {
  final PlayList playList;
  _PlayerState(   this.playList);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: YoutubePlayer(
          context: context,
          videoId: this.playList.VideoId,
          flags: YoutubePlayerFlags(
            mute: false,
            autoPlay: true,
            forceHideAnnotation: true,
            showVideoProgressIndicator: true,
          ),
          videoProgressIndicatorColor: Colors.amber,
          progressColors: ProgressColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
