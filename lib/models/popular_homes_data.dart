class PopularHomes {
  final String imageUrl;
  final String location;
  final String pinLocation;
  final String price;
  final String houseType;

  PopularHomes(
      {this.houseType,
      this.imageUrl,
      this.location,
      this.pinLocation,
      this.price});
}

List<PopularHomes> pophomes = [
  PopularHomes(
    imageUrl: 'images/mansio.jpg',
    price: '12,000',
    location: 'Thika',
    pinLocation: 'Makongeni',
    houseType: 'Mansion',
  ),
  PopularHomes(
    imageUrl: 'images/studio apartment.jpg',
    price: '10,000',
    location: 'Nairobi',
    pinLocation: 'Imara-Daima',
    houseType: 'Studio apartment',
  ),
  PopularHomes(
    imageUrl: 'images/bedsitter.jpg',
    price: '8,000',
    location: 'Ruiru',
    pinLocation: 'Makongeni',
    houseType: 'Bedsitter',
  ),
  PopularHomes(
    imageUrl: 'images/apartment.jpg',
    price: '15,000',
    location: 'Thika',
    pinLocation: 'Makongeni',
    houseType: 'apartment',
  ),
];
