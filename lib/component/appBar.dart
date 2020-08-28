import 'package:bixe/screen/aboutPage.dart';
import 'package:bixe/screen/helpPage.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class BuildAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BuildAppBar({
    Key key,
  }) : super(key: key);

  @override
  _BuildAppBarState createState() => _BuildAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => null;
}

class _BuildAppBarState extends State<BuildAppBar> {
  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Help",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
        HelpPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "About",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        AboutPage()));

    super.initState();
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu
              ), 
        onPressed: () {}
      ),
      elevation: 0,
      backgroundColor: Color.fromRGBO(71, 66, 66, 1),
      title: Shimmer.fromColors(
        baseColor: Color.fromRGBO(71, 66, 66, 1),
        highlightColor: Colors.white,
        child: Text(
          'BIXE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w100,
            letterSpacing: 4,
          ),
        ),
      ),
      centerTitle: true,
    );
  }
}
