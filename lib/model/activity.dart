class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;
  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price
  });
}

final List<Activity> activities = [
  Activity(
      imageUrl: 'assets/images/sight_seeing.jpg',
      name: 'St. Mark\'s Basilica',
      type: 'Sightseeing Tour',
      rating: 5,
      price: 30,
      startTimes: ['4:00 pm', '6.00 pm']
  ),
  Activity(
      imageUrl: 'assets/images/boat_ride.jpg',
      name: 'Ride Ee Water',
      type: 'Boat Ride',
      rating: 5,
      price: 25,
      startTimes: ['10:00 am', '11:00 am','4:00 pm', '6.00 pm', '8.00 pm', '9.00 pm']
  ),
  Activity(
      imageUrl: 'assets/images/group_knowledge.jpg',
      name: 'Botanical Garden',
      type: 'Study Tour',
      rating: 5,
      price: 20,
      startTimes: ['10:00 am', '5.00 pm']
  ),
  Activity(
      imageUrl: 'assets/images/parachute.webp',
      name: 'Dare Jump',
      type: 'Parachute',
      rating: 4,
      price: 50,
      startTimes: ['4:00 pm', '6.00 pm']
  ),
  Activity(
      imageUrl: 'assets/images/picnic.jpg',
      name: 'Grand Picnic',
      type: 'Family Picnic',
      rating: 5,
      price: 35,
      startTimes: ['10:00 am', '11:00 am','4:00 pm', '6.00 pm', '8.00 pm', '9.00 pm']
  ),
  Activity(
      imageUrl: 'assets/images/adventure_park.jpg',
      name: 'Adventure Park',
      type: 'Family park',
      rating: 5,
      price: 20,
      startTimes: ['10:00 am', '5:00 pm']
  ),
  Activity(
      imageUrl: 'assets/images/sight_seeing.jpg',
      name: 'Zip Rider',
      type: 'Kids Play',
      rating: 4,
      price: 15,
      startTimes: ['10:00 am', '5:00 pm']
  ),
];