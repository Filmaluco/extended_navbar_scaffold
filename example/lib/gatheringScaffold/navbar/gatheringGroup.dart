import 'package:flutter/material.dart';

class GatheringGroup {

  String id;
  String name;
  String desc;
  String imageUrl;
  IconData icon;

  GatheringGroup(this.name, this.desc, {this.imageUrl, this.icon});
}