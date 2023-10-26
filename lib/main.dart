// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:seblak_mandji/firebase_options.dart';
import 'package:seblak_mandji/pages/absent-page.dart';
import 'package:seblak_mandji/pages/auth/auth-page.dart';
import 'package:seblak_mandji/pages/auth/sign-in-page.dart';
import 'package:seblak_mandji/pages/auth/sign-up-page.dart';
import 'package:seblak_mandji/pages/cashier-page.dart';
import 'package:seblak_mandji/pages/home-page.dart';
import 'package:seblak_mandji/pages/profile-page.dart';
import 'package:seblak_mandji/pages/report-page.dart';
import 'package:seblak_mandji/pages/stock-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Menginisialisasi Firebase dengan menggunakan konfigurasi dari firebase_options.dart.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initializeDateFormatting('id');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/absentpage': (context) => AbsentPage(),
        '/profilepage': (context) => ProfilePage(),
        '/cashierpage': (context) => CashierPage(),
        '/stockpage': (context) => StockPage(),
        '/reportpage': (context) => ReportPage(),
        '/signinpage': (context) => SignInPage(),
        '/signuppage': (context) => SignUpPage()
      },
    );
  }
}

// color
Color mainColor = Color(0xFF900C3F);
Color cardBackgroundColor = Color(0xFF900C3F);
Color cardShadeColor = Color(0xFF810434);
