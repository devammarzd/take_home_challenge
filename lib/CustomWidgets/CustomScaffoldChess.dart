import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:take_home_challenge_ammar/Constants/Constants_chess.dart';
import 'package:take_home_challenge_ammar/Constants/CommonFunctions.dart';
import 'package:take_home_challenge_ammar/Screens/chess.dart';

class CustomScaffold extends StatefulWidget {
  final int index;

  final Widget cusBody;

  CustomScaffold({@required this.index, @required this.cusBody, Key key})
      : super(key: key);
  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          width: 108,
          // color: Colors.blue,
          child: Stack(
            children: [
              Icon(
                MdiIcons.chessPawn,
                color: Colors.green,
                size: 28,
              ),
              Positioned(
                right: 1,
                bottom: 0,
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                            fontSize: 22),
                        children: [
                      TextSpan(
                        text: 'Chess',
                      ),
                      TextSpan(
                        text: '.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1,
                            fontSize: 16),
                      )
                    ])),
              )
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
              splashRadius: 25,
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: widget.cusBody,

      backgroundColor: secondaryColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedFontSize: 15,
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedItemColor: iconColor,
        // unselectedLabelStyle: TextStyle(color: Colors.white,fontSize: 13),
        elevation: 12,
        unselectedFontSize: 13,
        currentIndex: widget.index,
        onTap: (i) {
          if (widget.index == i) {
          } else {
            if (i == 0) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Chess()),
                  (Route<dynamic> route) => false);
            }
            if (i == 1) {}
            if (i == 2) {}
            if (i == 3) {}
            if (i == 4) {}
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.chessPawn), label: "Play"),
          BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.puzzle,
              ),
              label: "Puzzles"),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.school), label: "Lessons"),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.calendarToday), label: "Today"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "More"),
        ],
      ),
    );
  }
}
