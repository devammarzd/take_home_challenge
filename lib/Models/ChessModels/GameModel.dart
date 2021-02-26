import 'package:flutter/cupertino.dart';

class GameModel {
//This model is for game mode
  String name;
  IconData gameIcon;
  Color iconColor;
  String extra;
  GameModel(
      {@required this.name,
      @required this.gameIcon,
      @required this.iconColor,
      @required this.extra});
}
