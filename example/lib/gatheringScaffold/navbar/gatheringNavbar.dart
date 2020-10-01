import 'package:flutter/material.dart';

double bottomBarVisibleHeight = 55.0;
double bottomBarOriginalHeight = 80.0;
double bottomBarExpandedHeight = 300.0;

class GatheringNavbar extends StatefulWidget {
  @override
  _GatheringNavbarState createState() => _GatheringNavbarState();
}

class _GatheringNavbarState extends State<GatheringNavbar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        left: 10,
        right: 10,
        child: Hero(
          tag: "navBar",
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  offset: Offset(
                    0, // Move to right 10  horizontally
                    35, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SizedBox(
                height: bottomBarVisibleHeight + 25,
                child: Stack(
                  children: <Widget>[
                    _buildNavbarButtons(context),
                    _buildActionButton(context),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }

  Widget _buildNavbarButtons(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(left: 0, right: 0),
        height: bottomBarVisibleHeight,
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[_buildGatheringsButton(), _buildSettingsButton()],
        ),
      ),
    );
  }

  Widget _buildGatheringsButton() {
    return Expanded(
      child: Container(
        height: bottomBarVisibleHeight,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          heroTag: null,
          // padding: EdgeInsets.only(left: 35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.group_work,
                size: 30,
                color: Colors.black87,
              ),
              Text(
                'Gatherings',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsButton() {
    return Expanded(
      child: Container(
        height: bottomBarVisibleHeight,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          heroTag: null,
          // padding: EdgeInsets.only(left: 35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.settings,
                size: 30,
                color: Colors.black87,
              ),
              Text(
                'Settings',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 20,
      child: Center(
        child: Container(
          height: 60,
          child: SizedBox(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  heroTag: null,
                  backgroundColor: Colors.black,
                  elevation: 0,
                  onPressed: null,
                  child: Icon(
                    Icons.notifications,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
