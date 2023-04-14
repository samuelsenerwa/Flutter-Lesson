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
        children: _renderFacts(location),
        // [
        //   _section("One", Colors.amber),
        //   _section("Two", Colors.grey),
        //   _section("Three", Colors.blue),
        // ],
      ),
    );
  }

  List<Widget> _renderFacts(Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  // Widget _section(String title, color) {
  //   return Container(
  //     decoration: BoxDecoration(color: color),
  //     child: Text(title),
  //   );
  // }

  Widget _sectionTitle(String text) {
    return Text(text);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}
