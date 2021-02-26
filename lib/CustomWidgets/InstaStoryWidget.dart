import 'package:flutter/material.dart';
import 'package:take_home_challenge_ammar/Data/data_Insta.dart';

class InstaStoryWidget extends StatelessWidget {
  int i;
  InstaStoryWidget({@required this.i, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: (i == 0)
                  ? [Colors.white, Colors.white]:
                  ( storyList[i].seen==true)?[Colors.grey[300],Colors.grey[300]]: [Colors.pink[700], Colors.orange[400]],
            ),
            borderRadius: BorderRadius.circular(500),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.5),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: i == 0 ? Colors.grey : Colors.white, width: 2.5),
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Image.asset(
                          storyList[i].image,
                          fit: BoxFit.fill,
                          height: 80,
                          width: 80,
                        )),
                  ),
                ),
                i == 0
                    ? Positioned(
                        right: 5,
                        bottom: 0,
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(500),
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Text(
          i == 0 ? 'Your Story' : storyList[i].name,
          style: TextStyle(
              fontSize: 11, letterSpacing: -0.5, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
