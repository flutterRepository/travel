class PlaceInfo {
  final String location, image, name;
  final double star;
  PlaceInfo({
    required this.location,
    required this.image,
    required this.name,
    required this.star,
  });
}

List places = [
  PlaceInfo(
      location: "Starbase",
      image: "images/mount_forel.jpg",
      name: "Falcon",
      star: 4.8),
  PlaceInfo(
      location: "Denver",
      image: "images/eco_camping.jpg",
      name: "Bet au startup",
      star: 5.0),
  PlaceInfo(
      location: "Nevada",
      image: "images/mount_everest.jpg",
      name: "Desert for inspiration",
      star: 4.5),
];
