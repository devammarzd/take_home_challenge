import 'package:flutter/cupertino.dart';

class DataChessModel{
//This model is for the result of chess games
  String name;
  bool result;
  String image;
  int gameMode;
  DataChessModel({@required this.name,@required this.result,@required this.image,@required this.gameMode});
}