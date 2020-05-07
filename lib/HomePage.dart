import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'AudioNumber.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache player = AudioCache();

  List<AudioNumber> numberList = [
    AudioNumber("one.wav", Colors.red, "One"),
    AudioNumber("two.wav", Colors.purple, "two"),
    AudioNumber("three.wav", Colors.green, "three"),
    AudioNumber("four.wav", Colors.deepOrange, "four"),
    AudioNumber("five.wav", Colors.pink, "five"),
    AudioNumber("six.wav", Colors.teal, "six"),
    AudioNumber("seven.wav", Colors.orange, "seven"),
    AudioNumber("eight.wav", Colors.lime, "eight"),
    AudioNumber("nine.wav", Colors.lightBlue, "nine"),
    AudioNumber("ten.wav", Colors.cyan, "ten"),
  ];

  playAudio(String uri) {
    player.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Spanish Number"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: numberList.length,
                  itemBuilder: (context, i) => SizedBox(
                    height: 20,
                    width: 40,
                    child: RaisedButton(
                      onPressed: () {
                        this.playAudio(numberList[i].audioUri);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: numberList[i].btnColor,
                      child: Text(
                        "${this.numberList[i].btnText.toUpperCase()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                height: 45.0,
                
                child: Center(
                  child: Text(
                    "LearnCodeOnline.in\n A project by Sourav Ganguly",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
