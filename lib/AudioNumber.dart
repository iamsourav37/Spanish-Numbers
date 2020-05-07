import 'package:flutter/material.dart';

class AudioNumber{
  String audioUri;
  MaterialColor btnColor;
  String btnText;

  AudioNumber(String audioUri,MaterialColor btnColor,String btnText){
    this.audioUri = audioUri;
    this.btnColor = btnColor;
    this.btnText = btnText;
  }

}