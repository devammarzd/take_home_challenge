import 'package:flutter/material.dart';
import 'package:take_home_challenge_ammar/Models/InstaModels/InstaPostModel.dart';
import 'package:take_home_challenge_ammar/Models/InstaModels/StoryModel.dart';

List<StoryModel> storyList = [//This List of type StoryModel contains data for story
  StoryModel(
      name: 'Ammar Zahid', image: 'assets/images/avatar1.jpg', seen: true),
  StoryModel(name: 'John Snow', image: 'assets/images/avatar2.jpg', seen: true),
  StoryModel(name: 'Abdullah', image: 'assets/images/avatar4.jpg', seen: false),
  StoryModel(name: 'Sam', image: 'assets/images/avatar5.jpg', seen: false),
  StoryModel(
      name: 'Ammar Zahid', image: 'assets/images/avatar7.jpg', seen: true),
  StoryModel(name: 'Ramos', image: 'assets/images/avatar3.jpg', seen: false),
];

List<PostModel> postList = [//This List of type PostModel contains data for posts
  PostModel(
      username: 'john.snow',
      loc: 'California, USA',
      profImage: 'assets/images/avatar2.jpg',
      postImage: 'assets/images/avatar6.jpg',
      postDesc: 'At this beautiful spot. Must visit. ',
      noOfLikes: '50'),
  PostModel(
      username: 'abdullah.official',
      loc: 'Karachi, Pakistan',
      profImage: 'assets/images/avatar4.jpg',
      postImage: 'assets/images/avatar4.jpg',
      postDesc: 'NEW DOPE HAIRSTYLE IN THE TOWN!!!',
      noOfLikes: '1,051'),
  PostModel(
      username: 'this.is.sam',
      loc: 'London, UK',
      profImage: 'assets/images/avatar5.jpg',
      postImage: 'assets/images/post1.jpg',
      postDesc: 'I swear thats a candid.',
      noOfLikes: '190'),
  PostModel(
      username: 'crick.maniac',
      loc: 'London, UK',
      profImage: 'assets/images/avatar7.jpg',
      postImage: 'assets/images/post2.jpg',
      postDesc: 'Intense Match. *Bites Nails*',
      noOfLikes: '990'),
  PostModel(
      username: 'ramos.888',
      loc: 'Barcelona, Spain',
      profImage: 'assets/images/avatar3.jpg',
      postImage: 'assets/images/post3.jpg',
      postDesc: 'Love of my life 😍💖',
      noOfLikes: '90')
];
