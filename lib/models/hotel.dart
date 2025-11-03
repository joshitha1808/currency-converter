class Hotel {
  final String name;
  final String city;
  final double rating;
  final int ratingsCount;
  final String price;
  final String imageAsset;

  const Hotel({
    required this.name,
    required this.city,
    required this.rating,
    required this.ratingsCount,
    required this.price,
    required this.imageAsset,
  });
}

// Example data used by the app
const List<Hotel> sampleHotels = [
  Hotel(
    name: 'Hotel Yuvraj Deluxe',
    city: 'Vijayawada',
    rating: 7.0,
    ratingsCount: 67,
    price: r'$2384',
    imageAsset: 'assets/room.jpg',
  ),
  Hotel(
    name: 'Sea View Resort',
    city: 'Visakhapatnam',
    rating: 8.4,
    ratingsCount: 142,
    price: r'$1920',
    imageAsset: 'assets/room.jpg',
  ),
  Hotel(
    name: 'Hilltop Inn',
    city: 'Araku',
    rating: 8.0,
    ratingsCount: 98,
    price: r'$1640',
    imageAsset: 'assets/room.jpg',
  ),
  Hotel(
    name: 'City Center Lodge',
    city: 'Hyderabad',
    rating: 7.8,
    ratingsCount: 210,
    price: r'$2040',
    imageAsset: 'assets/room.jpg',
  ),
];
