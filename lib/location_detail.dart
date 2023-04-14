import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  const LocationDetail(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(location.name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _renderBody(context, location),
        // [
        //   _section("One", Colors.amber),
        //   _section("Two", Colors.grey),
        //   _section("Three", Colors.blue),
        // ],
      ),
    );
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  // Widget _section(String title, color) {
  //   return Container(
  //     decoration: BoxDecoration(color: color),
  //     child: Text(title),
  //   );
  // }

  Widget _sectionTitle(String text) {
    return Container( 
      padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 10.0),
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 12.0,
        color: Colors.black
      ),
      ));

  }

  Widget _sectionText(String text) {
   return Container( 
      padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 10.0),
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 12.0,
      ),
      ));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}
