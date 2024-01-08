
import 'package:flutter/material.dart';
import 'package:gov_1/Ott.dart';
import 'package:gov_1/Search.dart';
import 'package:gov_1/education.dart';
import 'package:gov_1/screen/homepage.dart';
import 'package:gov_1/screen/mark/book.dart';
import 'package:gov_1/screen/provider/provider.dart';
import 'package:gov_1/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [

          ChangeNotifierProvider(
            create: (context) => ServiceData(),
          ),
        ],
        builder: (context, _) {
          return MaterialApp(
            theme: ThemeData.light(useMaterial3: true),

            debugShowCheckedModeBanner: false,
            initialRoute: 'spl',


            routes: {
              '/': (context) => const Homepage(),
              'spl': (context) => const spl(),

              'Education': (context) => const Education(),
              'OttApp': (context) => const OttApp(),
              'SearchEngin': (context) => const SearchEngin(),
              'Bookmark': (context) => const Bookmark(),

            },
          );
        }
    );
  }
}
