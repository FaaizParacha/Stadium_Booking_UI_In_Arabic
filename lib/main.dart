import 'package:fiver_project_work/FirstScreen.dart';
import 'package:fiver_project_work/login.dart';
import 'package:fiver_project_work/payment.dart';
import 'package:fiver_project_work/profile.dart';
import 'package:flutter/material.dart';


void main(){ WidgetsFlutterBinding.ensureInitialized();
  runApp( MaterialApp(
    home: FirstScreen(),
    debugShowCheckedModeBanner: false,
  ));}