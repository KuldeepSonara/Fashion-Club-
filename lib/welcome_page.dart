import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'catlog_page.dart';
import 'imageSilderWP.dart';

class welcome_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/images/welcome_page_bg.png"),
            //         fit: BoxFit.cover)),
            child: imageSliderWP(),
          ),
          BlurryContainer(
              blur: 9,
              color: Colors.white.withOpacity(0.19),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.5,
              borderRadius: BorderRadius.zero,
              child: Expanded(
                child: Container(
                    child: const SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text("OUR FASHION",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                  ),
                )),
              )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.55,
            // color: Colors.white,
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 10000,
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "Shop the most\nmordern\nessensials",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 28),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 45.0),
                                      child: GestureDetector(
                                  onTap: () {
                                      print("hello");
                                      Navigator.push(context, PageTransition(type: PageTransitionType.scale , alignment: Alignment.bottomCenter , child: catalog_page(),isIos: true,
                                          duration: Duration(milliseconds: 700),reverseDuration: Duration(milliseconds: 600)));
                                  },
                                  child:
                                  Icon(Icons.arrow_forward_outlined,color: Colors.black,)
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 100),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: Image.asset(
                                                "assets/images/facebook.png")),
                                        TextButton(
                                            onPressed: () {},
                                            child: Image.asset(
                                                "assets/images/twitter.png")),
                                        TextButton(
                                            onPressed: () {},
                                            child: Image.asset(
                                                "assets/images/google.png")),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(bottom: 45,left: 20),
                                    child: Image.asset(
                                      "assets/images/scrolling bar.png",
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * (1/6),
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: TextButton(
                onPressed: () {
                 Navigator.push(context, PageTransition(type: PageTransitionType.scale , alignment: Alignment.bottomCenter , child: catalog_page(),isIos: true,
                   duration: Duration(milliseconds: 700),reverseDuration: Duration(milliseconds: 600)));
                },
                child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, right: 10),
                      child: Text(
                        "skip",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

}
