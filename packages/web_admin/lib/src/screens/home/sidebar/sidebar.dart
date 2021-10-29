import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:web_admin/src/constants.dart';
import 'package:web_admin/src/models/responsive.dart';
import 'package:web_admin/src/screens/home/sidebar/components/profile_card.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!Responsive.isMobile(context)) const ProfileCard(),
                const SizedBox(height: 20),
                TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(),
                  lastDay: DateTime(2100),
                  calendarStyle: const CalendarStyle(
                      todayDecoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  )),
                ),
                const Divider(thickness: 4, color: kBgColor),
                Responsive(
                  mobile: _size.width <= 420
                      ? const SchudleCardMob()
                      : const SchudleCard(),
                  desktop: const SchudleCard(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SchudleCardMob extends StatelessWidget {
  const SchudleCardMob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Mon planning",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          ScheduleCardMob(
            title: "Crooked Forest",
            image: "my_schedule/Crooked_Forest.jpg",
            press: () {},
          ),
          const SizedBox(height: 20.0),
          ScheduleCardMob(
            title: "Gioc Waterfall",
            image: "my_schedule/Gioc_Waterfall.jpg",
            press: () {},
          ),
          const SizedBox(height: 20.0),
          ScheduleCardMob(
            title: "Tartaruga Comp",
            image: "my_schedule/Tartaruga_Comp.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class SchudleCard extends StatelessWidget {
  const SchudleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Mon planning",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          ScheduleCard(
            title: "Crooked Forest",
            image: "my_schedule/Crooked_Forest.jpg",
            press: () {},
          ),
          const SizedBox(height: 20.0),
          ScheduleCard(
            title: "Gioc Waterfall",
            image: "my_schedule/Gioc_Waterfall.jpg",
            press: () {},
          ),
          const SizedBox(height: 20.0),
          ScheduleCard(
            title: "Tartaruga Comp",
            image: "my_schedule/Tartaruga_Comp.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback press;
  const ScheduleCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image),
              ),
            ),
            const SizedBox(width: 20),
            Text(title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
      ),
    );
  }
}

class ScheduleCardMob extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback press;
  const ScheduleCardMob({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
