import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'favoriler.dart';


class Buttombar extends StatelessWidget {
  const Buttombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: mavi,
      color: yesil,
      style: TabStyle.fixed,
      items: const [
        TabItem(icon: Icons.favorite, title: 'Favoriler'),
        TabItem(icon: Icons.home),
        TabItem(icon: Icons.settings, title: 'Ayarlar'),

      ],
      initialActiveIndex:1,//optional, default as 0
      onTap: (int i) {
        if (i==0)
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Favoriler()),
            );
          }
          },
    );
  }
}
