import 'dart:ui';
import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_application/constant/constant.dart';
import 'package:notes_application/screens/myGrid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: convexBootm(),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarall(),
                category(),
              ],
            ),
            Expanded(child: MyGrid())
          ],
        ));
  }

  Widget appBarIcons() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: FaIcon(
              FontAwesomeIcons.addressBook,
              size: 35,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 260, top: 60),
            child: FaIcon(
              FontAwesomeIcons.bell,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
      );

  Widget namesAppBar() => Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Text('Hi Ashwini', style: appBarText),
      );

  Widget namesAppBar2() => Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Text(
          'WelCome Back',
          style: appBarText,
        ),
      );

  Widget searchBar() => Container(
        height: 40,
        width: 340,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: textfiled),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: FaIcon(
                  FontAwesomeIcons.search,
                  color: Colors.white,
                ),
                hintText: 'what category are you searching for?',
                hintStyle: hinntText),
          ),
        ),
      );

  Widget appBarall() => Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
          color: bgAppBar, borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBarIcons(),
          namesAppBar(),
          namesAppBar2(),
          SizedBox(
            height: 10,
          ),
          Center(child: searchBar()),
        ],
      ));

  Widget category() => Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Text(
            'Categories',
            style: categoryText,
          ),
          Spacer(),
          FaIcon(
            FontAwesomeIcons.trashAlt,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          FaIcon(
            FontAwesomeIcons.edit,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          FaIcon(
            FontAwesomeIcons.arrowDown,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );
  Widget convexBootm() => ConvexBottomNavigation(
        tabs: [
          TabData(icon: FaIcon(FontAwesomeIcons.home), title: "home"),
          TabData(icon: FaIcon(FontAwesomeIcons.star), title: "fev")
        ],
        onTabChangedListener: (position) {},
        circleColor: bgAppBar,
        circleSize: CircleSize.SMALL,
      );
}
