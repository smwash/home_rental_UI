class InterestHomes {
  final String imageUrl;
  final String location;
  final String pinLocation;
  final String price;
  final String rating;
  final String beds;
  final String baths;
  final String size;

  InterestHomes(
      {this.size,
      this.rating,
      this.beds,
      this.baths,
      this.imageUrl,
      this.location,
      this.pinLocation,
      this.price});
}

List<InterestHomes> interestedhomes = [
  InterestHomes(
      imageUrl: 'images/multifamily.jpg',
      price: '50,000',
      location: 'Thika',
      pinLocation: 'Thika Greens',
      rating: '4.5',
      beds: '5',
      baths: '6',
      size: '2000 sqft'),
  InterestHomes(
      imageUrl: 'images/mansio.jpg',
      price: '12,000',
      location: 'Thika',
      pinLocation: 'Makongeni',
      rating: '4.0',
      beds: '4',
      baths: '3',
      size: '1200 sqft'),
  InterestHomes(
      imageUrl: 'images/studio apartment.jpg',
      price: '10,000',
      location: 'Nairobi',
      pinLocation: 'Imara-Daima',
      rating: '4.5',
      beds: '2',
      baths: '1',
      size: '600 sqft'),
  InterestHomes(
      imageUrl: 'images/bedsitter.jpg',
      price: '8,000',
      location: 'Ruiru',
      pinLocation: 'Makongeni',
      rating: '5.0',
      beds: '1',
      baths: '1',
      size: '400 sqft'),
  InterestHomes(
      imageUrl: 'images/apartment.jpg',
      price: '15,000',
      location: 'Thika',
      pinLocation: 'Makongeni',
      rating: '4.5',
      beds: '3',
      baths: '2',
      size: '900 sqft'),
];
