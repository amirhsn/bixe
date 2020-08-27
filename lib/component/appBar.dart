import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const BuildAppBar({
    Key key,
  }) : super(key: key);

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
