import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:web_admin/src/constants.dart';
import 'package:web_admin/src/models/destination_model.dart';
import 'package:web_admin/src/models/place_model.dart';
import 'package:web_admin/src/models/responsive.dart';
import 'package:web_admin/src/screens/home/dashboard/components/destination_card.dart';
import 'package:web_admin/src/screens/home/dashboard/components/headers.dart';
import 'package:web_admin/src/screens/home/dashboard/components/place_card.dart';
import 'package:web_admin/src/screens/home/sidebar/sidebar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: kBgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Responsive(
                    mobile:
                        _size.width <= 450 ? const MobHeader() : const Header(),
                    desktop: const Header(),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 360,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (context, index) =>
                          PlaceCard(placeInfo: places[index]),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "Meilleures destinations",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Responsive(
                          mobile: _size.width <= 420
                              ? Column(
                                  children: List.generate(
                                    destinations.length,
                                    (index) => DestinationCardMob(
                                      destinationInfo: destinations[index],
                                      press: () {},
                                    ),
                                  ),
                                )
                              : Column(
                                  children: List.generate(
                                    destinations.length,
                                    (index) => DestinationCard(
                                      destinationInfo: destinations[index],
                                      press: () {},
                                    ),
                                  ),
                                ),
                          desktop: Column(
                            children: List.generate(
                              destinations.length,
                              (index) => DestinationCard(
                                destinationInfo: destinations[index],
                                press: () {},
                              ),
                            ),
                          ),
                        ),
                        const Divider(thickness: 3, color: kBgColor),
                        if (Responsive.isMobile(context)) const SideBar(),
                      ],
                    ),
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
