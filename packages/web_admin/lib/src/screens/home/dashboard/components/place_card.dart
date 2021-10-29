import 'package:flutter/material.dart';
import 'package:web_admin/src/models/place_model.dart';

class PlaceCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  const PlaceCard({
    Key? key,
    required this.placeInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                placeInfo.image,
                height: 350,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Column(
                children: [
                  Text(
                    placeInfo.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        placeInfo.location,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Text(
                        "${placeInfo.star}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
