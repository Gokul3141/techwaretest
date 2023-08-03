import 'dart:convert';

import 'package:get/get.dart';

import 'homepages/detailpage.dart';
import 'homepages/homepage.dart';
import 'modelclass.dart';
class AppRoutes{

  static String Homescren = "/homescrn";
  static String detailscrn ="/detailscreen";


  static List<GetPage> pages = [
  GetPage(name: Homescren, page: ()=>Homescreen()),
  GetPage(name: detailscrn, page: ()=>Detailscreen()),
  ];
  
}