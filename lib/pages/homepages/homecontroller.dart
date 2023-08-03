import 'package:get/get.dart';

import '../modelclass.dart';
import 'homeservice.dart';


class Homecontroller extends GetxController {
  var getapi = <Employeeitm>[].obs;

  ShowApi() async {
    var item = await ApiService().apiget();
    try {
      if (item != null) {
        getapi.value = item;
      }
    } catch (e) {

    }
  }

  @override
  void onInit() {
    ShowApi();
    // TODO: implement onInit
    super.onInit();
  }
}