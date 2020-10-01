import 'package:example/gatheringScaffold/navbar/gatheringNavbar.dart';
import 'package:flutter/material.dart';

class GatheringScaffold extends StatefulWidget {
  final PreferredSize appBar;
  final Widget body;

  const GatheringScaffold({Key key, this.appBar, this.body}) : super(key: key);

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
        widget.body,
        Container(),
        GatheringNavbar(),
      ]),
    );
  }

  Widget _buildWithoutAppBar(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        widget.body,
        Container(),
        GatheringNavbar(),
      ]),
    );
  }
}
