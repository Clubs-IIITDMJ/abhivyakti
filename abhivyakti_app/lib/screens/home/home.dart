// import 'package:abhivyakti_app/core/icons.dart';
// import 'package:abhivyakti_app/screens/home/sidebar.dart';
// import 'package:flutter/material.dart';
// import 'package:abhivyakti_app/core/constants.dart';
// import 'package:abhivyakti_app/core/responsive.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// class Home extends StatefulWidget {
//   final ScrollController? scrollController;
//   const Home({Key? key, this.scrollController}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SideBar(scrollController: widget.scrollController),
//         Container(
//           margin: EdgeInsets.only(left: size.isMobile ? 0 : 154),
//           height: size.isDesktop ? 1137 : displayHeight(context),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 7,
//                 child: Container(
//                   child: Row(
//                     children: [
//                       Expanded(
//                         flex: 8,
//                         child: Container(
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   child: Logo(),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   child: Row(
//                                     children: [
//                                       Expanded(
//                                         flex: 4,
//                                         child: InkWell(
//                                           // onTap: () {
//                                           //   widget.scrollController!.animateTo(
//                                           //       2567,
//                                           //       duration: Duration(
//                                           //           milliseconds: 1200),
//                                           //       curve: Curves.ease);
//                                           // },
//                                           child: Container(
//                                             color: Colors.black,
//                                             child: Column(
//                                               children: [
//                                                 Expanded(
//                                                   child: SvgPicture.asset(
//                                                     IconsData.leafAsset,
//                                                     height: size.isMobile
//                                                         ? 30
//                                                         : size.isTablet
//                                                             ? 45
//                                                             : 78,
//                                                     width: 184,
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   child: Container(
//                                                     alignment:
//                                                         Alignment.topCenter,
//                                                     child: Text(
//                                                       'Art',
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: size.isDesktop
//                                                             ? 47
//                                                             : size.isTablet
//                                                                 ? 30
//                                                                 : 25,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         flex: 6,
//                                         child: InkWell(
//                                           // onTap: () {
//                                           //   widget.scrollController!.animateTo(
//                                           //       3707,
//                                           //       duration: Duration(
//                                           //           milliseconds: 1600),
//                                           //       curve: Curves.ease);
//                                           // },
//                                           child: Container(
//                                             decoration: BoxDecoration(
//                                               border: Border(
//                                                 top: BorderSide(
//                                                   width: 1,
//                                                   color: Colors.black,
//                                                 ),
//                                               ),
//                                             ),
//                                             child: Center(
//                                               child: Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     'News ,',
//                                                     style: TextStyle(
//                                                       fontSize: size.isDesktop
//                                                           ? 30
//                                                           : size.isTablet
//                                                               ? 25
//                                                               : 18,
//                                                     ),
//                                                   ),
//                                                   Text(
//                                                     'Events',
//                                                     style: TextStyle(
//                                                       fontSize: size.isDesktop
//                                                           ? 30
//                                                           : size.isTablet
//                                                               ? 25
//                                                               : 18,
//                                                     ),
//                                                   ),
//                                                   Text(
//                                                     '& More',
//                                                     style: TextStyle(
//                                                       fontSize: size.isDesktop
//                                                           ? 30
//                                                           : size.isTablet
//                                                               ? 25
//                                                               : 18,
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: InkWell(
//                           // onTap: () {
//                           //   widget.scrollController!.animateTo(754,
//                           //       duration: Duration(milliseconds: 400),
//                           //       curve: Curves.ease);
//                           // },
//                           child: Container(
//                             color: kRed,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   top: size.isMobile ? 100 : 150,
//                                   right: size.isMobile ? -60 : -80,
//                                   child: SvgPicture.asset(
//                                     IconsData.logoAsset,
//                                     height: size.isMobile ? 150 : 300,
//                                     width: size.isMobile ? 150 : 300,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: 20,
//                                   right: 10,
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Text(
//                                         'About the',
//                                         style: TextStyle(
//                                           fontSize: size.isDesktop
//                                               ? 30
//                                               : size.isTablet
//                                                   ? 25
//                                                   : 18,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       Text(
//                                         'club',
//                                         style: TextStyle(
//                                           fontSize: size.isDesktop
//                                               ? 30
//                                               : size.isTablet
//                                                   ? 25
//                                                   : 18,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Expanded(
//                         flex: 3,
//                         child: InkWell(
//                           // onTap: () {
//                           //   widget.scrollController!.animateTo(5172,
//                           //       duration: Duration(milliseconds: 2000),
//                           //       curve: Curves.ease);
//                           // },
//                           child: Container(
//                             color: kRed,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 SizedBox(
//                                     width: size.isMobile
//                                         ? 10
//                                         : size.isTablet
//                                             ? 15
//                                             : 50),
//                                 Flexible(
//                                   child: Container(
//                                     alignment: Alignment.centerLeft,
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Looking to',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: size.isDesktop
//                                                 ? 30
//                                                 : size.isTablet
//                                                     ? 25
//                                                     : 12,
//                                           ),
//                                         ),
//                                         Text(
//                                           'join the',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: size.isDesktop
//                                                 ? 30
//                                                 : size.isTablet
//                                                     ? 25
//                                                     : 12,
//                                           ),
//                                         ),
//                                         Text(
//                                           'club?',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: size.isDesktop
//                                                 ? 30
//                                                 : size.isTablet
//                                                     ? 25
//                                                     : 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: size.isDesktop ? 150 : 6),
//                                 Flexible(
//                                   child: SvgPicture.asset(
//                                     IconsData.balloonAsset,
//                                     height: 169,
//                                     width: 62,
//                                   ),
//                                 ),
//                                 SizedBox(width: 20),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 4,
//                         child: InkWell(
//                           // onTap: () {
//                           //   widget.scrollController!.animateTo(1467,
//                           //       duration: Duration(milliseconds: 800),
//                           //       curve: Curves.ease);
//                           // },
//                           child: Container(
//                             color: Colors.black,
//                             child: Stack(
//                               alignment: Alignment.center,
//                               children: [
//                                 Positioned(
//                                   right: -10,
//                                   bottom: 0,
//                                   left: 0,
//                                   child: SvgPicture.asset(
//                                     IconsData.grassAsset,
//                                     width: displayWidth(context) / 2,
//                                   ),
//                                 ),
//                                 Text(
//                                   'Gallery',
//                                   style: TextStyle(
//                                       fontSize: size.isMobile
//                                           ? 25
//                                           : size.isTablet
//                                               ? 35
//                                               : 60,
//                                       color: Colors.white),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Logo extends StatelessWidget {
//   Logo({Key? key}) : super(key: key);

//   final Widget image1 = SvgPicture.asset(
//     'assets/svg/abhivyakti-text-1.svg',
//     color: Color(0xFFE5E5E5),
//     fit: BoxFit.contain,
//   );
//   final Widget image2 = SvgPicture.asset(
//     'assets/svg/abhivyakti-text-3.svg',
//     color: kRed,
//     fit: BoxFit.contain,
//   );
//   final Widget image3 = SvgPicture.asset(
//     'assets/svg/abhivyakti-text-3.svg',
//     fit: BoxFit.contain,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             bottom: -32,
//             left: 28,
//             right: -28,
//             top: 0,
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 40),
//               child: image1,
//             ),
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             top: 0,
//             bottom: 0,
//             child: Container(
//                 margin: EdgeInsets.symmetric(horizontal: 40), child: image2),
//           ),
//           Positioned(
//             top: -32,
//             left: -28,
//             right: 28,
//             bottom: 0,
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 40),
//               child: image3,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
