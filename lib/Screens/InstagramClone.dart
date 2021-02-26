import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:take_home_challenge_ammar/Constants/CommonFunctions.dart';
import 'package:take_home_challenge_ammar/Constants/Constants_chess.dart';
import 'package:take_home_challenge_ammar/CustomWidgets/CustomScaffoldInsta.dart';
import 'package:take_home_challenge_ammar/CustomWidgets/InstaPosts.dart';
import 'package:take_home_challenge_ammar/CustomWidgets/InstaStoryWidget.dart';
import 'package:take_home_challenge_ammar/Data/data_Insta.dart';
import 'package:take_home_challenge_ammar/instagram_icons_icons.dart';

class InstagramClone extends StatefulWidget {
  @override
  _InstagramCloneState createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldInsta(
        index: 0,
        cusBody: SingleChildScrollView(
          child: Column(
            children: [
//List View Builder for displaying Stories
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 100,
                  width: sizeWidth(context),
                  child: ListView.separated(
                    itemCount: storyList.length,
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, count) {
                      return InstaStoryWidget(i: count);
                    },
                    separatorBuilder: (context, i) {
                      return Container(
                        width: 5,
                      );
                    },
                  ),
                ),
              ),
              Divider(
                color: iconColor,
              ),
//List ViewBuilder for displaying Posts

              ListView.builder(
                  itemCount: postList.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return InstaPosts(
                      i: index,
                    );
                  })
            ],
          ),
        ));
  }


}
