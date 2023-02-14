import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SpeakWidget extends StatefulWidget {
  String text;
  SpeakWidget(this.text);

  @override
  State<SpeakWidget> createState() => _SpeakWidgetState();
}

class _SpeakWidgetState extends State<SpeakWidget> {
  FlutterTts flutterTts = FlutterTts();
  @override
  void initState() {
    super.initState();
    flutterTts.setLanguage("hi-IN");
    // set the language to Hindi (India)
  }

  Future _speak() async {
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1);
    await flutterTts.setLanguage("hi-IN");
    // await flutterTts.speak("ब्रेकिंग न्यूज़ समाचार"); // Hindi text to be spoken
    await flutterTts.speak(widget.text); // Hindi text to be spoken
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _speak,
      tooltip: 'Speak',
      child: Icon(Icons.volume_up_rounded),
    );
  }
}
