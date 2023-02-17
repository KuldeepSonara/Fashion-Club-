import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsionclube1/productpage/product1fromAll.dart';
import 'package:google_fonts/google_fonts.dart';

class all extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator
                            .of(context)
                            .push(PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          reverseTransitionDuration: Duration(seconds: 1),
                          pageBuilder: (_, __, ___) => product1(),
                        ));
                            },
                      child: Column(
                        children: [
                          Hero(
                            tag: "product1",
                            transitionOnUserGestures: false,
                            child: Container(
                              height: 250,
                              child: Image.network(
                                "https://us.wconcept.com/media/catalog/product/morder/product/552/710381552_1_301456284_NG21190.jpg?quality=80&fit=bounds&height=700&width=700",
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            child: Text("21wn reversible angora\ncardigan",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont("EB Garamond",
                                  textStyle: TextStyle(
                                      letterSpacing: 1, fontSize: 15)),),
                          ),
                          Container(
                            child: Text("\$120", textAlign: TextAlign.center,
                                style: GoogleFonts.getFont("EB Garamond",
                                    textStyle: TextStyle(
                                        color: Colors.deepOrangeAccent,
                                        fontSize: 18))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          child: Image.asset(
                            "assets/images/catlogepng2.png", fit: BoxFit
                              .cover,),
                        ),
                        Container(
                          child: Text("21wn reversible angora\ncardigan",
                            textAlign: TextAlign.center, style: GoogleFonts
                                .getFont("EB Garamond",
                                textStyle: TextStyle(
                                    letterSpacing: 1, fontSize: 15)),),
                        ),
                        Container(
                          child: Text("\$120", textAlign: TextAlign.center,
                              style: GoogleFonts.getFont("EB Garamond",
                                  textStyle: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 18))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          child: Image.network(
                            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTPbSPg2-AbCmJyzCDq0HsUBPrJUZPEnyc-YNvXTg1shmOEWz3c",
                            fit: BoxFit.cover,),
                        ),
                        Container(
                          child: Text("21wn reversible angora\ncardigan",
                            textAlign: TextAlign.center, style: GoogleFonts
                                .getFont("EB Garamond",
                                textStyle: TextStyle(
                                    letterSpacing: 1, fontSize: 15)),),
                        ),
                        Container(
                          child: Text("\$120", textAlign: TextAlign.center,
                              style: GoogleFonts.getFont("EB Garamond",
                                  textStyle: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 18))),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          child: Image.network(
                              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS1lJz55KvfaGdcjB8_2KgbEwx0lK1N3gkk58qtNG1H_Xp6R6nv",
                              fit: BoxFit.cover),
                        ),
                        Container(
                          child: Text("Oblong bag", textAlign: TextAlign.center,
                            style: GoogleFonts.getFont("EB Garamond",
                                textStyle: TextStyle(
                                    letterSpacing: 1, fontSize: 15)),),
                        ),
                        Container(
                          child: Text("\$120", textAlign: TextAlign.center,
                              style: GoogleFonts.getFont("EB Garamond",
                                  textStyle: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 18))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}