import 'package:flutter/material.dart';
import 'home.dart';
import 'list.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = const [
    HomePage(),
    ListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.list,
        size: 30,
      ),
    ];

    return Container(
      color: const Color.fromARGB(255, 3, 71, 50),
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'SAMPAHKU',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 3, 71, 50),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 3, 71, 50),
                    Color.fromARGB(255, 4, 107, 75),
                    Color.fromARGB(255, 23, 104, 255),
                  ],
                ),
              ),
            ),
          ),
          extendBody: true,
          body: screens[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
            ),
            child: CurvedNavigationBar(
              key: navigationKey,
              color: const Color.fromARGB(255, 4, 107, 75),
              buttonBackgroundColor: const Color.fromARGB(255, 23, 104, 255),
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 600),
              backgroundColor: Colors.transparent,
              index: index,
              onTap: (index) => setState(() => this.index = index),
              items: items,
            ),
          ),
        ),
      ),
    );
  }
}
