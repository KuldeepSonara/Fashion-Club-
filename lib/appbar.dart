import 'package:flutter/material.dart';

class Coustomappbar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      title: Center(
        child: TextButton(
          onPressed: () {},
          child: Image.asset(
            "assets/images/app bar image/Vector.png",
            width: 80,
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon:
            new Image.asset("assets/images/app bar image/Search.png")),
        IconButton(
            onPressed: () {},
            icon: new Image.asset(
                "assets/images/app bar image/shoppingbag.png")),
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip:
              MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Image(
                  image:
                  AssetImage("assets/images/app bar image/Menu.png")));
        },
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);

}