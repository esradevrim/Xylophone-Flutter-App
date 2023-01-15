import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final assetsPlayer =AssetsAudioPlayer();
  void playSound({required int soundNumber}){
    assetsPlayer.open(Audio('assets/note$soundNumber.wav'));
  }
  Expanded buildKey({required int soundNumber,required Color color,required String text}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
        ),
        onPressed: (){
          playSound(soundNumber: soundNumber);
        },
        child: Text('$text',
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, color: Colors.red, text: 'DO'),
              buildKey(soundNumber: 2, color: Colors.orange, text: 'RE'),
              buildKey(soundNumber: 3, color: Colors.yellow, text: 'Mİ'),
              buildKey(soundNumber: 4, color: Colors.green, text: 'FA'),
              buildKey(soundNumber: 5, color: Colors.blue, text: 'SOL'),
              buildKey(soundNumber: 6, color: Colors.deepPurple, text: 'LA'),
              buildKey(soundNumber: 7, color: Colors.pink, text: 'Sİ'),
            ],
          ),
        ),
      ),
    );
  }
}


