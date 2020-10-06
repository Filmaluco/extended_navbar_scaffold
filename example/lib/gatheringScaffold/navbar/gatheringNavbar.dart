import 'package:flutter/material.dart';

double bottomBarVisibleHeight = 55.0;
double iconOverflowDistance = 20.0;

class GatheringNavbar extends StatefulWidget {
  //Style
  final Color navBarColor;
  final Color iconsColor;
  final IconData actionButtonIcon;
  final Image actionButtonImage;
  final bool snaped;

  const GatheringNavbar(
    this.snaped,
    this.navBarColor,
    this.iconsColor,
    this.actionButtonIcon,
    this.actionButtonImage, {
    Key key,
  }) : super(key: key);

  //Action Widgets
  //TODO: array of actions

  //Gathering Widgets
  //TODO: array of gatherings

  @override
  _GatheringNavbarState createState() => _GatheringNavbarState();
}

class _GatheringNavbarState extends State<GatheringNavbar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: widget.snaped ? 0 : 10,
      left: widget.snaped ? 0 : 10,
      right: widget.snaped ? 0 : 10,
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
          child: widget.snaped
              ? _buildContainerNavbar(child: _buildNavbarStack())
              : _buildCardNavbar(child: _buildNavbarStack()),
        ),
      ),
    );
  }

  Widget _buildCardNavbar({Widget child}) {
    return Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft:
                widget.snaped ? Radius.circular(0) : Radius.circular(20),
            bottomRight:
                widget.snaped ? Radius.circular(0) : Radius.circular(20),
          ),
        ),
        child: child);
  }

  Widget _buildContainerNavbar({Widget child}) {
    return Container(color: Colors.transparent, child: child);
  }

  Widget _buildNavbarStack() {
    return SizedBox(
      height: bottomBarVisibleHeight + iconOverflowDistance,
      child: Stack(
        children: <Widget>[
          _buildNavbarButtons(),
          _buildActionButton(),
        ],
      ),
    );
  }

  Widget _buildNavbarButtons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(left: 0, right: 0),
        height: bottomBarVisibleHeight,
        decoration: BoxDecoration(
          color: widget.navBarColor,
          borderRadius: BorderRadius.only(
            bottomLeft:
                widget.snaped ? Radius.circular(0) : Radius.circular(20),
            bottomRight:
                widget.snaped ? Radius.circular(0) : Radius.circular(20),
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
              bottomRight:
                  widget.snaped ? Radius.circular(0) : Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.group_work,
                size: 30,
                color: widget.iconsColor,
              ),
              Text(
                'Gatherings',
                style: TextStyle(
                  fontSize: 13,
                  color: widget.iconsColor,
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
              bottomRight:
                  widget.snaped ? Radius.circular(0) : Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.settings,
                size: 30,
                color: widget.iconsColor,
              ),
              Text(
                'Settings',
                style: TextStyle(
                  fontSize: 13,
                  color: widget.iconsColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: iconOverflowDistance,
      child: Center(
        child: Container(
          height: 60,
          child: SizedBox(
            height: 50,
            width: 50,
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: widget.iconsColor,
              elevation: 0,
              onPressed: null,
              child: Icon(
                widget.actionButtonIcon,
                color: widget.navBarColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
