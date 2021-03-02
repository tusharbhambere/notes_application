import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_application/constant/constant.dart';

List<StaggeredTile> _cardView = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
];
List<Widget> _listTile = <Widget>[
  BackGroundTile(
    color: tile1,
    icons: FontAwesomeIcons.lightbulb,
    name: 'New ideas',
    color1: tiletext1,
  ),
  BackGroundTile(
    color: tile2,
    icons: FontAwesomeIcons.music,
    name: 'Music',
    color1: tiletext2,
  ),
  BackGroundTile(
    color: tile3,
    icons: FontAwesomeIcons.laptop,
    name: 'Programming',
    color1: tiletext3,
  ),
  BackGroundTile(
    color: tile4,
    icons: FontAwesomeIcons.hamburger,
    name: 'Cooking',
    color1: tiletext4,
  ),
  BackGroundTile(
    color: tile5,
    icons: FontAwesomeIcons.planeArrival,
    name: 'Aeroplan',
    color1: tiletext5,
  ),
  BackGroundTile(
    color: tile6,
    icons: FontAwesomeIcons.rocket,
    name: 'Rocket',
    color1: tiletext6,
  ),
];

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _cardView,
          children: _listTile,
        ),
      );
}

class BackGroundTile extends StatelessWidget {
  final Color color;
  final Color color1;
  final String name;
  final IconData icons;

  const BackGroundTile(
      {Key key, this.color, this.name, this.icons, this.color1})
      : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          margin: new EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              FaIcon(
                icons,
                size: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(color: color1, fontSize: 14),
              ),
            ],
          ),
        ),
      );
}
