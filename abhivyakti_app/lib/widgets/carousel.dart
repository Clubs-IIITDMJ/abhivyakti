import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  final double? height;
  final double? aspectRatio;
  final bool? isGallery;
  const Carousel({
    Key? key,
    @required this.isGallery,
    this.height,
    this.aspectRatio,
  }) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<Image> _galleryImages = [
    Image.network('assets/gallery/1.png', fit: BoxFit.cover, width: 1000),
    Image.network('assets/gallery/2.png', fit: BoxFit.cover, width: 1000),
    Image.network('assets/gallery/3.png', fit: BoxFit.cover, width: 1000),
    Image.network('assets/gallery/4.png', fit: BoxFit.cover, width: 1000),
    Image.network('assets/gallery/5.png', fit: BoxFit.cover, width: 1000),
    Image.network('assets/gallery/6.png', fit: BoxFit.cover, width: 1000),
    Image.network('assets/gallery/7.png', fit: BoxFit.cover, width: 1000),
  ];
  final List<Image> _artImages = [
    Image.network('assets/art/1.png', fit: BoxFit.cover),
    Image.network('assets/art/2.png', fit: BoxFit.cover),
    Image.network('assets/art/3.png', fit: BoxFit.cover),
    Image.network('assets/art/4.jpg', fit: BoxFit.cover),
    Image.network('assets/art/5.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/6.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/7.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/8.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/9.JPG', fit: BoxFit.cover),
    Image.network('assets/art/10.JPG', fit: BoxFit.cover),
    Image.network('assets/art/11.jpg', fit: BoxFit.cover),
    Image.network('assets/art/12.JPG', fit: BoxFit.cover),
    Image.network('assets/art/13.png', fit: BoxFit.cover),
    Image.network('assets/art/14.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/15.png', fit: BoxFit.cover),
    Image.network('assets/art/16.jpg', fit: BoxFit.cover),
    Image.network('assets/art/17.png', fit: BoxFit.cover),
    Image.network('assets/art/18.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/19.jpg', fit: BoxFit.cover),
    Image.network('assets/art/20.png', fit: BoxFit.cover),
    Image.network('assets/art/21.jpg', fit: BoxFit.cover),
    Image.network('assets/art/22.jpeg', fit: BoxFit.cover),
    Image.network('assets/art/23.png', fit: BoxFit.cover),
    Image.network('assets/art/24.JPG', fit: BoxFit.cover),
    Image.network('assets/art/25.jpg', fit: BoxFit.cover),
    Image.network('assets/art/26.png', fit: BoxFit.cover),
    Image.network('assets/art/27.jpeg', fit: BoxFit.cover),
  ];
  final int current = 2;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (widget.isGallery!)
        _galleryImages.forEach((image) {
          precacheImage(image.image, context);
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: (widget.isGallery ?? false)
          ? _galleryImages.length
          : _artImages.length,
      itemBuilder: (context, index, realIdx) {
        return Container(
          child: Center(
            child: (widget.isGallery ?? false)
                ? _galleryImages[index]
                : _artImages[index],
          ),
        );
      },
      options: CarouselOptions(
        height: widget.height,
        aspectRatio: widget.aspectRatio ?? 1,
        viewportFraction: 0.6,
        initialPage: 2,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
