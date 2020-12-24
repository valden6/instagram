import 'package:flutter/material.dart';
import 'package:instagram/widgets/reelActions.dart';
import 'package:instagram/widgets/reelContentAccount.dart';
import 'package:instagram/widgets/reelContentAudio.dart';
import 'package:instagram/widgets/reelContentDesc.dart';
import 'package:video_player/video_player.dart';

class ReelScreen extends StatefulWidget {
  @override
  _ReelScreenState createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {

  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/reel-video.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.value.volume == 0 
        ? _controller.setVolume(1) 
        : _controller.setVolume(0);
      },
      onLongPressStart: (details) {
        setState(() {
          _controller.pause();
        });
      },
      onLongPressEnd: (details) {
        setState(() {
          _controller.play();
        });
      },
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              VideoPlayer(_controller),
              Positioned(
                top: MediaQuery.of(context).size.height/40 * 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(child: Text("Reels", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)))
                )
              ),
              Positioned(
                right: MediaQuery.of(context).size.width/40,
                child: ReelActions()
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/40 * 29,
                child: ReelContentAccount()
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/40 * 32,
                child: ReelContentDesc()
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/40 * 35,
                child: ReelContentAudio()
              )
            ]
          )
        )
      )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}