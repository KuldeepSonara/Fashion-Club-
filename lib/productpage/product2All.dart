import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

import '../appbar.dart';

class product2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Coustomappbar(),
      drawer: Drawer(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (1 / (1.5)),
            padding: EdgeInsets.all(20),
            child: Stack(
              children: [
                Hero(
                  tag: "product2",
                  child: Container(
                    height: MediaQuery.of(context).size.height * (1 / (1.2)),
                    child: Image.asset(
                      "assets/images/catlogepng2.png", fit: BoxFit
                        .cover,),
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
            // padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      "BENSIMON",
                      style: GoogleFonts.getFont(('EB Garamond'),
                          textStyle: TextStyle(fontSize: 30, letterSpacing: 3)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/Export.png", width: 50),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              'Color Mixed Knit Vest Woman (Beige)',
              style: GoogleFonts.getFont("EB Garamond",
                  textStyle: TextStyle(
                      color: Colors.black45, fontSize: 20, wordSpacing: 1)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "\$120",
              style: GoogleFonts.getFont("EB Garamond",
                  textStyle: TextStyle(
                      color: Colors.deepOrange.shade300,
                      fontSize: 25,
                      letterSpacing: 1,
                      wordSpacing: 1)),
            ),
          ),
        ],
      ),
    );
  }
}

class zoompic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Coustomappbar(),
      body: Hero(
        tag: "product2",
        child: Container(
            decoration: BoxDecoration(),
            child: PhotoView(
                backgroundDecoration: BoxDecoration(
                  color: Colors.white,
                ),
                gaplessPlayback: true,
                imageProvider: AssetImage(
                    "assets/images/catlogepng2.png"
                )
            )),
      ),
    );
  }
}
