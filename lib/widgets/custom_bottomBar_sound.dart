import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/constents.dart';

class CustomBottombarSound extends StatefulWidget {
  const CustomBottombarSound({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  State<CustomBottombarSound> createState() => _CustomBottombarSoundState();
}

class _CustomBottombarSoundState extends State<CustomBottombarSound> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  void InitState() {
    super.initState();
    // الاستماع لتغييرات المشغل
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() => duration = d);
    });
    audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() => position = p);
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> playAudio(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  Future<void> pauseAudio() async {
    await audioPlayer.pause();
  }

  Future<void> stopAudio() async {
    await audioPlayer.stop();
    setState(() => position = Duration.zero);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomAppBar(
        height: 140,
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Slider(
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) {
                    audioPlayer.seek(Duration(seconds: value.toInt()));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatTime(position)),
                    Text(formatTime(duration)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white),
                      onPressed: () async {
                        if (isPlaying) {
                          await pauseAudio();
                        } else {
                          await playAudio(
                              'https://server7.mp3quran.net/basit/${widget.surahNumber}.mp3'); // استبدل برابط التلاوة
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.stop, color: Colors.white),
                      onPressed: stopAudio,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
