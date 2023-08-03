import 'package:get/get.dart';
class DetailController extends GetxController{
  String content="";
  String title ="";
  String image ="";
  @override
  void onInit(){
    content = Get.arguments==null?'': Get.arguments["content"];
    image = Get.arguments==null?'': Get.arguments["image"];
    title = Get.arguments==null?'': Get.arguments["title"];
    update();
    super.onInit();



  }
}