import 'package:flutter/material.dart';
import 'package:flutter_lesson/location_detail.dart';
import 'package:flutter_lesson/mocks/mock_location.dart';
import 'package:flutter_lesson/models/location.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();

  return runApp( MaterialApp(home: LocationDetail(mockLocation)));
}

