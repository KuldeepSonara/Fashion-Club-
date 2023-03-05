import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fsionclube1/productpage/product1fromAll.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:like_button/like_button.dart';
import '../appbar.dart';

class productList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Coustomappbar(),
      body: FutureBuilder<List<dynamic>>(
        builder: (context, snapshort) {
          if (snapshort.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 12,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * (1 / 7),
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Image.network(
                                snapshort.data![index]['images'].toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: LikeButton(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                likeBuilder: (isTapped) {
                                  return Icon(Icons.favorite,
                                      color: isTapped
                                          ? Colors.red
                                          : Colors.transparent
                                              .withOpacity(0.5));
                                },
                              ),
                            )
                          ]),
                        ),
                        Container(
                            child: Column(
                          children: [
                            FittedBox(
                              alignment: Alignment.topLeft,
                              child: Text(
                                snapshort.data![index]['tital'],
                                style: GoogleFonts.getFont("Playfair Display",
                                    textStyle: TextStyle(fontSize: 20)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: FittedBox(
                                child: Text(
                                  snapshort.data![index]["doc"],
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                );
              },
              itemCount: snapshort.data!.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: getProductFromApi(),
      ),
    );
  }

  Future<List<dynamic>> getProductFromApi() async {
    http.Response res = await http.get(
        Uri.parse("https://640050a029deaba5cb349410.mockapi.io/fashionApi"));
    List<dynamic> jsonData = jsonDecode(res.body.toString());
    return jsonData;
  }
}
