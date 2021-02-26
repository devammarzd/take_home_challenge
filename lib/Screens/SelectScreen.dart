import 'package:flutter/material.dart';
import 'package:take_home_challenge_ammar/Constants/CommonFunctions.dart';
import 'package:take_home_challenge_ammar/Screens/InstagramClone.dart';
import 'package:take_home_challenge_ammar/Screens/chess.dart';

class SelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Take Home Challenge'),
      ),
      body: Container(
        width: sizeWidth(context),
        height: sizeHeight(context),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: (){
      Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => InstagramClone()),
                  (Route<dynamic> route) => false);
            },
            child: Text('Instagram Clone'),
            ),
            RaisedButton(onPressed: (){
      Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Chess()),
                  (Route<dynamic> route) => false);
            },
            child: Text('Chess App Clone'),
            )
          ],
        ),
      ),
    );
  }
}