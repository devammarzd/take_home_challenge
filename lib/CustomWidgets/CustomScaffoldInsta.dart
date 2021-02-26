import 'package:flutter/material.dart';
import 'package:take_home_challenge_ammar/instagram_icons_icons.dart';

class CustomScaffoldInsta extends StatefulWidget {
  final int index;

  final Widget cusBody;
  CustomScaffoldInsta({@required this.index, @required this.cusBody, Key key})
      : super(key: key);
  @override
  _CustomScaffoldInstaState createState() => _CustomScaffoldInstaState();
}

class _CustomScaffoldInstaState extends State<CustomScaffoldInsta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Instagram',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'BillaBong',
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              splashRadius: 20,
              icon: Icon(InstagramIcons.messenger),
              onPressed: () {})
        ],
      ),
      body: widget.cusBody,

      // floatingActionButton: widget.floatButton,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        currentIndex: widget.index,
        onTap: (i) {
          if (widget.index == i) {
          } else {
            if (i == 0) {}
            if (i == 1) {}
            if (i == 2) {}
            if (i == 3) {}
            if (i == 4) {}
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
              label: ' a'),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
              label: ' a'),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
              label: 'a '),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    height: 4,
                    width: 3,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(500)),
                  )
                ],
              ),
              label: ' a'),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(
                      'assets/images/avatar1.jpg',
                      width: 25,
                      height: 25,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
              label: 'a '),
        ],
      ),
    );
  }
}
