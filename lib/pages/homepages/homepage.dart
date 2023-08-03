import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techwaretest/pages/homepages/search.dart';
import 'package:techwaretest/pages/routes.dart';

import 'homecontroller.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  var homecontrol = Get.put(Homecontroller());


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          SearchScreen(),

        ],
        backgroundColor: Colors.lightBlueAccent[400],
        title: Text("Employee List",style: TextStyle(color: Colors.black),),
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: homecontrol.getapi.length,
            itemBuilder: (c, i) {
              final data = homecontrol.getapi[i];
              return ListTile(
                onTap: (){
                  Get.toNamed(AppRoutes.detailscrn,);

                },
                leading:  Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: CircleAvatar(

                  radius: 30,
                  child: ClipOval(
                    child: Image.network(
                      data.profileImage.toString(),
                      fit: BoxFit.cover,
                      width: 57,
                      height: 57,
                    ),
                  ),
              ),
                ),
                title: Text(
                  data.name,
                  style: TextStyle(color: Colors.black),

                ),
                subtitle: Text(data.email,style: TextStyle(color: Colors.grey),),
              );
            });
      }),
    );
  }


}
