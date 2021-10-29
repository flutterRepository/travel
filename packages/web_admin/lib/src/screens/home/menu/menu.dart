import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:web_admin/src/constants.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                "Albatros",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          MenuCardList(
            title: "Dashboard",
            icon: Icons.dashboard,
            inactiveColor: true,
            press: () {},
          ),
          MenuCardList(
            title: "Mes tickets",
            icon: Icons.card_giftcard,
            press: () {},
          ),
          MenuCardList(
            title: "Favorite",
            icon: Icons.favorite_outline,
            press: () {},
          ),
          MenuCardList(
            title: "Messages",
            icon: Icons.email_outlined,
            press: () {},
          ),
          MenuCardList(
            title: "Transactions",
            icon: Icons.account_balance_wallet_outlined,
            press: () {},
          ),
          MenuCardList(
            title: "Paramètres",
            icon: Icons.settings,
            press: () {},
          ),
          MenuCardList(
            title: "Deconnexion",
            icon: Icons.logout,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class MenuCardList extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback press;
  final bool inactiveColor;
  const MenuCardList({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
    this.inactiveColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: inactiveColor ? kPrimaryColor : Colors.transparent,
      child: ListTile(
        onTap: press,
        leading: Icon(
          icon,
          color: inactiveColor ? Colors.white : Colors.grey,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: inactiveColor ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
