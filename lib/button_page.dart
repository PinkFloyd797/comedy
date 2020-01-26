import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



class ButtonPage extends StatefulWidget {

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {

  int pictureNumber=9;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(80.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                child: Container(
                    child: Image.asset('assets/$pictureNumber.jfif')),
              ),
            ),
          ),
        ),
        Container(
          child: Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: buildKey(
                    text: 'booo',
                    color: Colors.red[200],
                    soundNumber: 1,
                    buttonPicture: 1),),
              Container(
                padding: EdgeInsets.all(10),
                child: buildKey(
                    text: 'wha wha',
                    color: Colors.red[300],
                    soundNumber: 2,
                    buttonPicture: 2),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: buildKey(
                      text: 'clap',
                      color: Colors.red[400],
                      soundNumber: 3,
                      buttonPicture: 3)),
              Container(
                  padding: EdgeInsets.all(10),
                  child: buildKey(
                      text: 'laugh',
                      color: Colors.red[500],
                      soundNumber: 4,
                      buttonPicture: 4)),
              Container(
                padding: EdgeInsets.all(10),
                child: buildKey(
                    text: 'horror',
                    color: Colors.red[600],
                    soundNumber: 5,
                    buttonPicture: 5),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: buildKey(
                    text: 'sadden',
                    color: Colors.red[700],
                    soundNumber: 6,
                    buttonPicture: 6),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: buildKey(
                      text: 'pun',
                      color: Colors.red[800],
                      soundNumber: 7,
                      buttonPicture: 7)),
              Container(
                padding: EdgeInsets.all(10),
                child: buildKey(
                    text: 'cricket',
                    color: Colors.red[900],
                    soundNumber: 8,
                    buttonPicture: 8),
              ),
            ],
          ),
        ),
      ],
    );
  }



  void changePicture(buttonPicture) {
    setState(() {
      pictureNumber = buttonPicture;
    });
  }

  void playSound(soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.mp3');
  }


  FlatButton buildKey(
      {Color color, int soundNumber, String text, int buttonPicture}) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        '$text',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      color: color,
      onPressed: () {
        playSound(soundNumber);
        changePicture(buttonPicture);
      },
    );
  }

}
