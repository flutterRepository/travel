import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:web_admin/src/models/responsive.dart';
import 'package:web_admin/src/screens/home/dashboard/dashboard.dart';
import 'package:web_admin/src/screens/home/menu/menu.dart';
import 'package:web_admin/src/screens/home/sidebar/sidebar.dart';

class HomeSreeen extends StatefulWidget {
  const HomeSreeen({Key? key}) : super(key: key);

  @override
  _HomeSreeenState createState() => _HomeSreeenState();
}

class _HomeSreeenState extends State<HomeSreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
            )),
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
      ),
      body: Row(
        children: [
          //le menu
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 1,
              child: Menu(),
            ),

          //La section principale
          Expanded(
            flex: 6,
            child: ListView(
              children: [
                Row(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Dashboard(),
                    ),
                    if (!Responsive.isMobile(context))
                      const Expanded(
                        flex: 2,
                        child: SideBar(),
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
