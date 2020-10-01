import 'package:extended_navbar_scaffold/extended_navbar_scaffold.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return ExtendedNavigationBarScaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "<", style: TextStyle(
            fontSize: 35.0,
          ),
          ),
        ),
      ),
      elevation: 0,
      floatingAppBar: true,
      appBar: AppBar(
        shape: kAppbarShape,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Extended Scaffold Example',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      navBarColor: Colors.white,
      navBarIconColor: Colors.black,
      moreButtons: [
        MoreButtonModel(
          icon: Icons.monetization_on,
          label: 'Wallet',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: Icons.bookmark,
          label: 'My Bookings',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: Icons.directions_car,
          label: 'My Cars',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: Icons.transit_enterexit,
          label: 'Transactions',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: Icons.map,
          label: 'Offer Parking',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: Icons.person_outline,
          label: 'Profile',
          onTap: () {},
        ),
        null,
        MoreButtonModel(
          icon: Icons.settings,
          label: 'Settings',
          onTap: () {},
        ),
        null,
      ],
      searchWidget: Container(
        height: 50,
        color: Colors.redAccent,
      ),
      // onTap: (button) {},
      // currentBottomBarCenterPercent: (currentBottomBarParallexPercent) {},
      // currentBottomBarMorePercent: (currentBottomBarMorePercent) {},
      // currentBottomBarSearchPercent: (currentBottomBarSearchPercent) {},
      parallexCardPageTransformer: PageTransformer(
        pageViewBuilder: (context, visibilityResolver) {
          return PageView.builder(
            controller: PageController(viewportFraction: 0.85),
            itemCount: parallaxCardItemsList.length,
            itemBuilder: (context, index) {
              final item = parallaxCardItemsList[index];
              final pageVisibility =
              visibilityResolver.resolvePageVisibility(index);
              return ParallaxCardsWidget(
                item: item,
                pageVisibility: pageVisibility,
              );
            },
          );
        },
      ),
    );
  }

  final parallaxCardItemsList = <ParallaxCardItem>[
    ParallaxCardItem(
        title: 'Netflix payments',
        body: 'Our join account gathering',
        background: Container(
          color: Colors.orange,
        )),
    ParallaxCardItem(
        title: 'Game night',
        body: 'First weekend of every month',
        background: Container(
          color: Colors.redAccent,
        )),
    ParallaxCardItem(
        title: 'Show the bola',
        body: 'Oleeeee',
        background: Container(
          color: Colors.blue,
        )),
  ];
}
