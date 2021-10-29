import 'package:flutter/material.dart';
import 'package:web_admin/src/constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: kBgColor,
            borderRadius: BorderRadius.circular(50),
          ),
          height: 60,
          width: 60,
          child: Image.asset(
            "images/profile.png",
          ),
        ),
        const SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Excellence Michel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              "Star base",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(width: 15.0),
        const Icon(
          Icons.keyboard_arrow_down,
        )
      ],
    );
  }
}
