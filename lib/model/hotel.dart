class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price
  });
}

final hotels = <Hotel>[
    Hotel(
      imageUrl: 'assets/images/h1.jpg',
      name: "The Scarlet",
      address: '221B Baker Street, London',
      price: 300
    ),
    Hotel(
      imageUrl: 'assets/images/h2.jpg',
      name: "Suhantapra",
      address: 'Singapore',
      price: 500
    ),
    Hotel(
      imageUrl: 'assets/images/h3.jpg',
      name: "Sg Clean",
      address: '221B Baker Street, London',
      price: 300
    ),
    Hotel(
      imageUrl: 'assets/images/h4.jpg',
      name: "Oinx",
      address: '221B Baker Street, London',
      price: 300
    ),
];