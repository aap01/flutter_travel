import 'package:fluttertravel/model/activity.dart';

class Place {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Place({
      this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities
  });
}

final places = <Place>[
  Place(
    imageUrl: 'assets/images/banagil-cave-portugal.jpg',
    city: 'Barga',
    country: 'Portugal',
    description: 'A historical place. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[0], activities[1], activities[2], activities[3],]
  ),
  Place(
    imageUrl: 'assets/images/germany.jpg',
    city: 'Berlin',
    country: 'Gernany',
    description: 'Most beautiful place of Germany. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[1], activities[5], activities[2], activities[3],]
  ),
  Place(
    imageUrl: 'assets/images/italy.jpg',
    city: 'Vienna',
    country: 'Italy',
    description: 'The finest place that serves couple a quiet & romantic environment. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: activities
  ),
  Place(
    imageUrl: 'assets/images/Japan.jpg',
    city: 'Osaka',
    country: 'Japan',
    description: 'One of the most colorsful places of Asia. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[5], activities[6], activities[3], activities[0],]
  ),
  Place(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Art, culture and glamour are what Paris is built upon. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[0], activities[1], activities[6], activities[3],]
  ),
  Place(
    imageUrl: 'assets/images/Rio.jpg',
    city: 'Rio De Janeiro',
    country: 'Brazil',
    description: 'Nice air, fresh environment and green of forest belong to only Rio. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[4], activities[5], activities[6], activities[3], activities[2]]
  ),
  Place(
    imageUrl: 'assets/images/seul.jpg',
    city: 'Seul',
    country: 'Korea',
    description: 'Chilling weather and warm cup of coffee is what we serve here. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[1], activities[6], activities[3],]
  ),
  Place(
    imageUrl: 'assets/images/tajmahal.jpg',
    city: 'Mumbai',
    country: 'India',
    description: 'Exotic Tajmahal represents the immortality of love and affection. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[5], activities[0], activities[1], activities[6], activities[3],]
  ),
  Place(
    imageUrl: 'assets/images/thailand.jpg',
    city: 'Phuket',
    country: 'Thailand',
    description: 'Phuket is best for its street food and love of people. Many people visit here over the year with family & friends. They have fun all the time they spend here.',
    activities: [activities[3], activities[1], activities[6], activities[2],]
  ),
];