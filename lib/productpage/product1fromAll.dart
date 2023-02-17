import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

class product1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              icon: new Image.asset("assets/images/app bar image/Search.png")),
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
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: const Image(
                    image: AssetImage("assets/images/app bar image/Menu.png")));
          },
        ),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (1 / (1.5)),
            padding: EdgeInsets.all(20),
            child: Stack(
              children: [
                Hero(
                  tag: "product1",
                  child: Container(
                    height: MediaQuery.of(context).size.height * (1 / (1.2)),
                    child: Image.network(
                        "https://us.wconcept.com/media/catalog/product/morder/product/552/710381552_1_301456284_NG21190.jpg?quality=80&fit=bounds&height=700&width=700",
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_rounded),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return zoompic();
                          },
                        ));
                      },
                      child: Image.asset("assets/images/Resize.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/productNavigater.png"),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      "mohan",
                      style: GoogleFonts.getFont(('EB Garamond'),
                          textStyle: TextStyle(fontSize: 35,letterSpacing: 3)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/Export.png",width: 50),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class zoompic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              icon: new Image.asset("assets/images/app bar image/Search.png")),
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
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: const Image(
                    image: AssetImage("assets/images/app bar image/Menu.png")));
          },
        ),
      ),
      body: Hero(
        tag: "product1",
        child: Container(
            decoration: BoxDecoration(),
            child: PhotoView(
              backgroundDecoration: BoxDecoration(
                color: Colors.white,
              ),
              gaplessPlayback: true,
              imageProvider: NetworkImage(
                  "https://us.wconcept.com/media/catalog/product/morder/product/552/710381552_1_301456284_NG21190.jpg?quality=80&fit=bounds&height=700&width=700"),
            )),
      ),
    );
  }
}
