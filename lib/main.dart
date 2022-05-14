import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_your_car/screens/app/main_screen.dart';
import 'package:rent_your_car/screens/lunch_screen.dart';
import 'package:rent_your_car/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: theme,
        supportedLocales: const [Locale('ar')],
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const LunchScreen(),
          '/main_screen': (context) => const MainScreen(),
        },
      ),
      designSize: const Size(375, 812),
    );
  }
}
