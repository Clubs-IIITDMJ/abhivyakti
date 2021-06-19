import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final double? height;
  final double? aspectRatio;
  final List? images;
  const Carousel({
    Key? key,
    this.height,
    this.aspectRatio,
    this.images,
  }) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int current = 2;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ...List.generate(
          widget.images!.length,
          (index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: widget.images![index],
              fit: BoxFit.fill,
            )),
          ),
        ),
      ],
      options: CarouselOptions(
        height: widget.height,
        aspectRatio: widget.aspectRatio ?? 1,
        viewportFraction: 0.6,
        initialPage: 2,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
