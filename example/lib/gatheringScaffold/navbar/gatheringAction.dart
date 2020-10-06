import 'package:flutter/cupertino.dart';

class GatheringAction {

  String name;
  IconData icon;
  Function onClick;

  GatheringAction(this.name, this.icon, {this.onClick});
}