import 'package:flutter/material.dart';
import 'package:flutter_mobx_weekend/feature/basket/view/basket_view.dart';
import 'package:flutter_mobx_weekend/feature/favorite/view/favorite_view.dart';
import 'package:flutter_mobx_weekend/feature/profile/view/profile_view.dart';
import 'package:flutter_mobx_weekend/feature/search/view/search_view.dart';
import '../../feature/home/makeup_view/makeup_view.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BuildBottomNavBar> {
  int? _selectedIndex;
  Color? _selectedIconColor;
  static const List<Widget> _widgetOptions = <Widget>[
    MakeupView(),
    SearchView(),
    BasketView(),
    FavoriteView(),
    ProfileView(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == index) {
        _selectedIconColor = Colors.brown.shade900;
      } else
        Colors.blueGrey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _widgetOptions.elementAt(_selectedIndex ?? 0),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "search",
                icon: Icon(
                  Icons.search,
                ),
              ),
              BottomNavigationBarItem(
                label: "basket",
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: "favorite",
                icon: Icon(
                  Icons.favorite_border,
                ),
              ),
              BottomNavigationBarItem(
                label: "profile",
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
              ),
            ],
            currentIndex: _selectedIndex ?? 0,
            selectedItemColor: _selectedIconColor,
            unselectedItemColor: Colors.blueGrey,
            onTap: _onItemTapped,
          )),
    );
  }
}
