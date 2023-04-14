import 'package:flutter_lesson/models/location.dart';

import '../models/location_fact.dart';

class MockLocation extends Location {
  MockLocation({required super.name, required super.url, required super.facts});

  static Location FetchAny() {
    return Location(
        name: "Arashiyama Bamboo Grove, Japan",
        url:
            'https://photos.smugmug.com/i-hFcX6RC/0/1c58ee68/L/famous-bamboo-grove-arashiyama-L.jpg',//image url
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'The Arashiyama Bamboo Grove is one of Kyoto’s top sights and for good reason: standing amid these soaring stalks of bamboo is like being in another world.'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'If you’ve been planning a trip to Kyoto, you’ve probably seen pictures of the Arashiyama Bamboo Grove – along with the torii tunnels of Fushimi-Inari-Taisha Shrine and Kinkaku-ji Temple, it’s one of the most photographed sights in the city. But no picture can capture the feeling of standing in the midst of this sprawling bamboo grove – the whole thing has a palpable sense of otherness that is quite unlike that of any normal forest we know of.')
        ]);
  }
}
