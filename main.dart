import 'package:flutter/material.dart';

import 'HEPSİBURADA/anasayfa.dart';
//import 'screens/anasayfa.dart';



void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, // Üstteki "debug" yazısını kaldırır
        routes: {

          "/mainpage": (context) => MainPage(),
        },
        initialRoute: "/mainpage",
      ),
    );