import 'package:flutter/material.dart';
import 'package:ration_zone/presentation/notification.dart';
import 'package:ration_zone/presentation/shopaddress.dart';
import 'package:ration_zone/containers.dart';
import 'package:ration_zone/presentation/editprofile.dart';
import 'package:ration_zone/presentation/feedback.dart';
import 'package:ration_zone/presentation/home.dart';
import 'package:ration_zone/presentation/login.dart';
import 'package:ration_zone/presentation/shoporder.dart';
import 'package:ration_zone/presentation/shoppayment.dart';
import 'package:ration_zone/presentation/profile.dart';
import 'package:ration_zone/presentation/shophome.dart';
import 'package:ration_zone/presentation/signup.dart';
import 'package:ration_zone/presentation/stock.dart';
import 'package:ration_zone/presentation/supplycohome.dart';
import 'package:ration_zone/presentation/supplycoaddress.dart';
import 'package:ration_zone/presentation/supplycoorders.dart';
import 'package:ration_zone/presentation/supplycopayment.dart';
import 'package:ration_zone/texts.dart';
import 'package:ration_zone/presentation/shoptime.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

