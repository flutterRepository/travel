class DestinationInfo {
  final String location;
  final String image;
  final String name;
  final double star;
  final double price;
  DestinationInfo({
    required this.location,
    required this.image,
    required this.name,
    required this.star,
    required this.price,
  });
}

List destinations = [
  DestinationInfo(
    location: "California",
    image: "destination/Redwood_Forest.jpg",
    name: "Redwood Forest",
    star: 4.8,
    price: 150,
  ),
  DestinationInfo(
    location: "Canyon",
    image: "destination/ice_land.jpg",
    name: "Ice Land",
    star: 4.5,
    price: 100,
  ),
  DestinationInfo(
    location: "Kasta Rika",
    image: "destination/Sahale_Glacier.jpg",
    name: "Sahale Galcier",
    star: 4.8,
    price: 130,
  ),
];
