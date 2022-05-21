import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_your_car/models/bn_screen.dart';
import 'package:rent_your_car/screens/app/fav_screen.dart';
import 'package:rent_your_car/screens/app/home_screen.dart';
import 'package:rent_your_car/screens/app/recipes_screen.dart';
import 'package:rent_your_car/styles/color_manger.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<BnScreen> _screens = [
    BnScreen(screens: const HomeScreen(), title: 'مطبخ مسك'),
    BnScreen(screens: const FavScreen(), title: 'المفضلة'),
    BnScreen(screens: const RecipesScreen(), title: 'الوصفات'),
    BnScreen(screens: const RecipesScreen(), title: 'الوصفات'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 55.w,
        backgroundColor: ColorManger.defaultColor,
        toolbarHeight: 40.h,
      leading: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 2.h,),
        width: 35.w,
        height: 35.h,
        decoration: BoxDecoration(
            color: Colors.black54,
            border: Border.all(
                width: 2.sp,
                color: ColorManger.defaultColor
            ),
            borderRadius: BorderRadius.circular(8.sp)
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {

          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white70,
          ),
        ),
      ),
      ),
      body: _screens[_selectedIndex].screens,
        bottomNavigationBar: BottomNavyBar(
          itemCornerRadius: 10.sp,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          containerHeight: 50,
          curve: Curves.easeInOut,
          selectedIndex: _selectedIndex,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: ColorManger.defaultColor,
              inactiveColor: Colors.black54,
              icon: Icon(Icons.home),
              title: Text('الرئيسية'),
            ),
            BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: ColorManger.defaultColor,
              inactiveColor: Colors.black54,
                icon: Icon(Icons.receipt_long),
                title: Text('الوصفات'),
            ),
            BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: ColorManger.defaultColor,
              inactiveColor: Colors.black54,
                icon: Icon(Icons.search),
                title: Text('أبحث'),
            ),
            BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: ColorManger.defaultColor,
              inactiveColor: Colors.black54,
                icon: Icon(Icons.add_circle_outline),
                title: Text('المحفوظات'),
            ),
          ],
        )
    );
  }
 }

