import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:take_home_challenge_ammar/Models/ChessModels/GameModel.dart';
import 'package:take_home_challenge_ammar/Models/ChessModels/dataChessModel.dart';
import 'package:take_home_challenge_ammar/bullet_icons.dart';
import 'package:take_home_challenge_ammar/instagram_icons_icons.dart';

List<DataChessModel> dataChess = [
  DataChessModel(
      name: "AmmarZahid",
      result: true,
      image: "assets/images/avatar1.jpg",
      gameMode: 2),
        DataChessModel(
      name: "MarioDraghi",
      result: false,
      image: "assets/images/avatar3.jpg",
      gameMode: 2),
        DataChessModel(
      name: "roudy",
      result: true,
      image: "assets/images/avatar4.jpg",
      gameMode: 2),
        DataChessModel(
      name: "AliKhan",
      result: true,
      image: "assets/images/avatar5.jpg",
      gameMode: 2),
  DataChessModel(
      name: "Gunjitta7886",
      result: null,
      image: "assets/images/avatar2.jpg",
      gameMode: 0),
        DataChessModel(
      name: "JustinBogorad",
      result: false,
      image: "assets/images/avatar1.jpg",
      gameMode: 0),
 
];

List<GameModel> gameModes = [
  GameModel(
      name: "Blitz",
      gameIcon: MdiIcons.flash,
      iconColor: Colors.yellow[700],
      extra: "1055"),
       GameModel(
      name: "Rapid",
      gameIcon: MdiIcons.timerOutline,
      iconColor: Colors.green[700],
      extra: "1055"),

  GameModel(
      name: "Bullet",
      gameIcon: Bullet.bullet,
      iconColor: Colors.yellow[700].withOpacity(0.5),
      extra: "871"),
       GameModel(
      name: "Daily",
      gameIcon: MdiIcons.whiteBalanceSunny,
      iconColor: Colors.yellow[800],
      extra: "1293"),
       GameModel(
      name: "Daily",
      gameIcon: MdiIcons.whiteBalanceSunny,
      iconColor: Colors.orange,
      extra: "1055"),
  
];
