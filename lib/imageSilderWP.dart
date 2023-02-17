import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class imageSliderWP extends StatefulWidget {
  @override
  State<imageSliderWP> createState() => _imageSliderWPState();
}

class _imageSliderWPState extends State<imageSliderWP> {
  int activeIndex=0;
  final urlImages = [
    "https://images.unsplash.com/photo-1580599003412-278b6833dc78?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://i.pinimg.com/236x/26/f9/67/26f96792590310bdfc42477a3306b452.jpg",
    "https://i.pinimg.com/564x/c7/b2/82/c7b2821d0147cfbae6cc09f820ae94c8.jpg",
    "https://images.unsplash.com/photo-1676325769736-0ec9bf07fd67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1495385794356-15371f348c31?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGZhc2hpb24lMjBjbHViZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbiUyMGNsdWJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=600",
   ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: urlImages.length,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        viewportFraction: 1,
        autoPlayAnimationDuration: Duration(seconds: 3),
        // onPageChanged: (index, reason) =>(
        //     setState(()=> activeIndex=index)
        //
        // )


      ),
      itemBuilder: (context, index, realIndex) {
        final urlImage = urlImages[index];

        return buildImage(urlImage, index);
      },
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    color: Colors.amberAccent,
    child: Image.network(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
}
