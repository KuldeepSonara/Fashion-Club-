import 'package:flutter/material.dart';
import 'package:fsionclube1/cataloge/all.dart';
import 'package:fsionclube1/explor%20carloge/product_list.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appbar.dart';
import 'image_slider.dart';

class catalog_page extends StatefulWidget {
  @override
  State<catalog_page> createState() => _catalog_pageState();
}

class _catalog_pageState extends State<catalog_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Coustomappbar(),
        drawer: Drawer(),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    child: imageSlider(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Text("LUXURY\nFASHION\nACCESSORIES",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont("EB Garamond",
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ))),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.all(8),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                                  return productList();
                                }, ));
                              },
                              child: Text(
                                "EXPLORE COLLECTON",
                                style: GoogleFonts.getFont('EB Garamond',
                                    textStyle: TextStyle(
                                        fontSize: 25, color: Colors.white)),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            child:
                                Image.asset("assets/images/mainescrollbar.png"),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "NEW ARRIVAL",
                  style: GoogleFonts.getFont("EB Garamond",
                      textStyle: TextStyle(letterSpacing: 3, fontSize: 25)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Image.asset(
                "assets/images/baseline.png",
                width: 50,
              ),
            ),
             new ConstrainedBox(
              constraints: new BoxConstraints(
                minHeight: 200,
                maxHeight: 700,
              ),
               child: manu_bar(),
            )
          ],
        ));
  }
}


class manu_bar extends StatefulWidget {
  @override
  State<manu_bar> createState() => _manu_barState();
}

class _manu_barState extends State<manu_bar>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 4, vsync: this)
    ..addListener(() {
      setState(() {});
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white.withOpacity(0.89),
        elevation: 0,
        title: TabBar(
          controller: tabController,
          isScrollable: true,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          unselectedLabelColor: Colors.transparent,
          indicator: BoxDecoration(),
          indicatorPadding: EdgeInsets.zero,
          tabs: [
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                    color: tabController.index == 0
                        ? Colors.black
                        : Color(0xffe9e8e2),
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "All",
                    style: GoogleFonts.getFont("Playfair Display",
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: tabController.index == 0
                                ? Colors.white
                                : Color(0xff7d7774))),
                  ),
                ),
              ),
            ),
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                    color: tabController.index == 1
                        ? Colors.black
                        : Color(0xffe9e8e2),
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Apparel",
                    style: GoogleFonts.getFont("Playfair Display",
                        textStyle: TextStyle(
                            fontSize: 25,
                            color: tabController.index == 1
                                ? Colors.white
                                : Color(0xff7d7774))),
                  ),
                ),
              ),
            ),
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                    color: tabController.index == 2
                        ? Colors.black
                        : Color(0xffe9e8e2),
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Dress",
                    style: GoogleFonts.getFont("Playfair Display",
                        textStyle: TextStyle(
                            fontSize: 25,
                            color: tabController.index == 2
                                ? Colors.white
                                : Color(0xff7d7774))),
                  ),
                ),
              ),
            ),
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                    color: tabController.index == 3
                        ? Colors.black
                        : Color(0xffe9e8e2),
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Tshirt",
                    style: GoogleFonts.getFont("Playfair Display",
                        textStyle: TextStyle(
                            fontSize: 25,
                            color: tabController.index == 3
                                ? Colors.white
                                : Color(0xff7d7774))),
                  ),
                ),
              ),
            ),
            Tab(
              iconMargin: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                    color: tabController.index == 4
                        ? Colors.black
                        : Color(0xffe9e8e2),
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Bage",
                    style: GoogleFonts.getFont("Playfair Display",
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: tabController.index == 4
                                ? Colors.white
                                : Color(0xff7d7774))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            child: all(),
          ),
          Container(
            child: Text('All'),
          ),
          Container(
            child: Text('All'),
          ),
          Container(
            child: Text('All'),
          ),
          Container(
            child: Text('All'),
          ),
        ],
      ),
    );
  }
}
