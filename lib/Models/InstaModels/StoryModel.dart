import 'package:flutter/foundation.dart';

class StoryModel{
  //This model is for Instaragram Stories
  String name;
  bool seen;
  String image;
  StoryModel ({@required this.name, @required this.image, @required this.seen});
}