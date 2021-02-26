import 'package:flutter/material.dart';
import 'package:take_home_challenge_ammar/Constants/CommonFunctions.dart';
import 'package:take_home_challenge_ammar/Constants/Constants_chess.dart';
import 'package:take_home_challenge_ammar/Data/data_Insta.dart';
import 'package:take_home_challenge_ammar/instagram_icons_icons.dart';


class InstaPosts extends StatelessWidget {
  int i;
  InstaPosts({@required this.i, Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                children: [
                  Container(
                    width: sizeWidth(context),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7.0, 2, 7, 2),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.asset(
                              postList[i].profImage,
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postList[i].username,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                postList[i].loc,
                                  style: TextStyle(
                                      fontSize: 12, letterSpacing: -0.5),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: iconColor,
                            ),
                            onPressed: () {},
                            splashRadius: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
              postList[i].postImage,
                    width: sizeWidth(context),
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 5, 8, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              InstagramIcons.chat,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              InstagramIcons.send,
                              size: 28,
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.bookmark_outline)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(postList[i].noOfLikes+ ' likes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 3,
                        ),
                        RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: postList[i].username +" ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: postList[i].postDesc,
                                      style: TextStyle()),
                                ])),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(500),
                              child: Image.asset(
                                'assets/images/avatar1.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Container(
                                  child: TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Add a comment',
                                    hintStyle: TextStyle(
                                        color: Colors.grey[500], fontSize: 12)),
                              )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '😍',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '😂',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                                height: 13,
                                width: 13,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(500)),
                                child: Icon(
                                  Icons.add,
                                  size: 10,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                        SizedBox(height: 7,),
                        Text('1 hour ago',style: TextStyle(
                                        color: Colors.grey[400], fontSize: 10),),
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}