import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
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
                return Card(
                 child: Row(
                   children: [

                   ],
                 ),
                ) ;
              },
              itemCount: snapshort.data!.length,
            );
          }
          else {
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
