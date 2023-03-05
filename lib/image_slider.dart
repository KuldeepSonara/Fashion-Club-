import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class imageSlider extends StatefulWidget {
  @override
  State<imageSlider> createState() => _imageSliderState();
}

class _imageSliderState extends State<imageSlider> {
  final urlImages = [
    "https://images.unsplash.com/photo-1589785148112-83debe32a7ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://media.istockphoto.com/id/1259705254/photo/stylish-fashionable-blonde-woman-with-smoky-eye-makeup-in-jeans-white-t-shirt-and-black.jpg?s=612x612&w=0&k=20&c=jsfMFnIiaVZdxPg933bLGn1J3RVqqzFhycWeY0ZBJ18=",
    "https://images.unsplash.com/photo-1580599003412-278b6833dc78?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://images.unsplash.com/photo-1599829606666-5ac43d5ff60d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1589785157215-127232cf9dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/1249827471/photo/fashion-portrait-of-elegant-woman-in-brown-clothes-dark-background.jpg?s=612x612&w=0&k=20&c=n5XxM7IzE9oHm-_KQ_4C-clkB9-AqtZ2YceQ6-sW9AQ=",
    "https://images.unsplash.com/photo-1604158640082-226d434cf47a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    //"https://images.unsplash.com/photo-1516726817505-f5ed825624d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://i.pinimg.com/236x/55/38/c2/5538c2c6c4ba49638e68e47fb3a66a33.jpg"
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
