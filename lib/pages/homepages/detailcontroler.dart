import 'package:get/get.dart';
class DetailController extends GetxController{
  String name="";
  String title ="";
  String image ="";
  @override
  void onInit(){
    name = Get.arguments==null?'': Get.arguments["name"];
    image = Get.arguments==null?'': Get.arguments["image"];
    title = Get.arguments==null?'': Get.arguments["title"];
    update();
    super.onInit();



  }
}