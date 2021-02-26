import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:take_home_challenge_ammar/Constants/CommonFunctions.dart';
import 'package:take_home_challenge_ammar/Constants/Constants_chess.dart';

import 'package:take_home_challenge_ammar/CustomWidgets/CustomScaffoldChess.dart';
import 'package:take_home_challenge_ammar/Data/data_chess.dart';
import 'package:take_home_challenge_ammar/bullet_icons.dart';

class Chess extends StatefulWidget {
  @override
  _ChessState createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 0,
        cusBody: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                // color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width,
//This list view is for the horizontal scrollable game modes at the top of the screen
                        child: ListView.separated(
                          itemCount: gameModes.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                // height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        gameModes[i].name,
                                        style: TextStyle(
                                          color: iconColor,
                                          fontSize: 12,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Icon(
                                        gameModes[i].gameIcon,
                                        color: gameModes[i].iconColor,
                                        size: 26,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        gameModes[i].extra,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: -0.2,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, i) {
                            return SizedBox();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Game Archive',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: SizedBox()),
                                Container(
                                  width: 60,
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Result',
                                    style: TextStyle(
                                        color: iconColor, fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 30,
                                ),
                                Container(
                                  width: 80,
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Accuracy',
                                    style: TextStyle(
                                        color: iconColor, fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: primaryColor,
                              thickness: 1.5,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ListView.separated(
                              itemCount: dataChess.length,
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (context, i) {
// listItem is the game result for this listview builder
                                return listItem(i);
                              },
                              separatorBuilder: (context, i) {
                                return Divider(
                                  color: primaryColor,
                                  thickness: 1.2,
                                  indent: 80,
                                );
                              },
                            ),
                            Divider(
                              color: primaryColor,
                              thickness: 1.2,
                              indent: 80,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Card(
                              elevation: 2,
                              color: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              child: Container(
                                width: sizeWidth(context),
                                height: 55,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: primaryColor),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.folder,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Game Archive',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: sizeWidth(context),
                decoration: BoxDecoration(color: primaryColor),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    onPressed: () {},
                    color: Colors.lightGreen,
                    child: Text(
                      'New Game',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }


//Returns the reusable  widget for results
  Widget listItem(int i) {
    return Row(
      children: [
        Icon(
          gameModes[dataChess[i].gameMode].gameIcon,
          color: gameModes[dataChess[i].gameMode].iconColor,
          size: 22,
        ),
        SizedBox(
          width: 10,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              dataChess[i].image,
              width: 35,
              height: 35,
              fit: BoxFit.fill,
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          dataChess[i].name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white, fontSize: 12),
        )),
        Container(
            width: 60,
            alignment: Alignment.center,
            child: Icon(
              dataChess[i].result == true
                  ? MdiIcons.plusBox
                  : dataChess[i].result == false
                      ? MdiIcons.minusBox
                      : MdiIcons.equalBox,
              color: dataChess[i].result == true
                  ? Colors.green[800]
                  : dataChess[i].result == false
                      ? Colors.red[900]
                      : iconColor,
              size: 20,
            )),
        SizedBox(
          width: 5,
          height: 30,
        ),
        Container(
          width: 80,
          height: 20,
          alignment: Alignment.center,
          child: Text(
            'Analyze',
            style: TextStyle(color: Colors.blue, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
