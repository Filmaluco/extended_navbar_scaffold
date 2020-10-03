import 'package:example/gatheringScaffold/navbar/gatheringNavbar.dart';
import 'package:flutter/material.dart';

class GatheringScaffold extends StatefulWidget {
  //Widgets
  final PreferredSize appBar;
  final Widget body;

  //Style
  final bool snapedNavBar;
  final Color navBarColor;
  final Color iconsColor;
  final IconData actionButtonIcon;
  final Image actionButtonImage;

  //Action Widgets
  //TODO: array of actions

  //Gathering Widgets
  //TODO: array of gatherings

  const GatheringScaffold(
      {Key key,
      this.appBar,
      this.body,
      this.snapedNavBar = false,
      this.navBarColor = Colors.white,
      this.iconsColor = Colors.black,
      this.actionButtonIcon = Icons.edit,
      this.actionButtonImage})
      : super(key: key);

  @override
  _GatheringScaffoldState createState() => _GatheringScaffoldState();
}

class _GatheringScaffoldState extends State<GatheringScaffold> {
  @override
  Widget build(BuildContext context) {
    return widget.appBar == null
        ? _buildWithoutAppBar(context)
        : _buildWithAppBar(context);
  }

  Widget _buildWithAppBar(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: Stack(children: <Widget>[
        widget.body ?? Container(),
        Container(),
        GatheringNavbar(widget.snapedNavBar, widget.navBarColor, widget.iconsColor,
            widget.actionButtonIcon, widget.actionButtonImage),
      ]),
    );
  }

  Widget _buildWithoutAppBar(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        widget.body ?? Container(),
        Container(),
        GatheringNavbar(widget.snapedNavBar, widget.navBarColor, widget.iconsColor,
            widget.actionButtonIcon, widget.actionButtonImage),
      ]),
    );
  }
}
