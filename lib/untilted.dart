// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// List<Widget> _renderbody(BuildContext context) {
//   var result = <Widget>[];
//   result.add(_bannerImage(location.url, 170.0));
//   result.addAll(_renderFacts(context, location));
//   return result;
// }

// Widget _bannerImage(String url, double height) {
//   return Container(
//       Constraints: BoxConstraints.tightFor(height: height),
//       child: Image.network(url, Fit: BoxFit.fitWidth));
// } //insert image

// Widget  _sectionTitle(String text) {
//   return Container(
//     padding: EdgeInsets.fromLTRB(25.0, 0, 250.0, 10.0),
//     child: Text(text,
//       textAlign: TextAlign.left,
//       style: const TextStyle(
//         fontSize: 12.0,
//         color: Colors.black,
//       ));
//   )
// }
// //styling the text