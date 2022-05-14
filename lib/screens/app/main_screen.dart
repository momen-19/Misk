import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_your_car/models/bn_screen.dart';
import 'package:rent_your_car/screens/app/fav_screen.dart';
import 'package:rent_your_car/screens/app/home_screen.dart';
import 'package:rent_your_car/screens/app/recipes_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int _index = 0;
  List<BnScreen> _screens = [
    BnScreen(screens: HomeScreen(), title: 'مطبخ مسك'),
    BnScreen(screens: FavScreen(), title: 'المفضلة'),
    BnScreen(screens: RecipesScreen(), title: 'الوصفات'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _screens[_index].title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined, color: Color(0xffBBBDC1)),
            )
          ],
        ),
        drawer: Drawer(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.sp),
              bottomLeft: Radius.circular(10.sp),
            ),
          ),
        ),
        body: _screens[_index].screens,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: ( int value){
            setState(() {
              _index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'مطبخ مسك',
              activeIcon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'المفضلة',
              activeIcon: Icon(
                Icons.favorite,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_outlined,
              ),
              label: 'الوصفات',
              activeIcon: Icon(
                Icons.receipt,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
