import 'package:flutter/material.dart';

class ProfileTiles{
  IconData? iconData;
  String? title;

  ProfileTiles({this.iconData,this.title});
}


List<ProfileTiles> profileTilesData=[
  ProfileTiles(iconData: Icons.privacy_tip_outlined,title:"Privacy"),
  ProfileTiles(iconData: Icons.history,title:"Purchase History"),
  ProfileTiles(iconData: Icons.help_outline_outlined,title:"Help & Support"),
  ProfileTiles(iconData: Icons.settings_outlined,title:"Settings"),
  ProfileTiles(iconData: Icons.person_add_outlined,title:"Invite a Friend"),
];