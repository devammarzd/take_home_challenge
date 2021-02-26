import 'package:flutter/foundation.dart';

class PostModel {
//This model is for Instaragram Posts
  String username;
  String loc;
  String profImage;
  String postImage;
  String noOfLikes;
  String postDesc;
  
  PostModel({
    @required this.username,
    @required this.loc,
    @required this.profImage,
    @required this.postImage,
    @required this.postDesc,
    @required this.noOfLikes,
  });
}
