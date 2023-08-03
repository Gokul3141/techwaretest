import 'package:flutter/material.dart';

import '../modelclass.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({Key? key, required this.detailitm}) : super(key: key);
  final Employeeitm detailitm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[400],
        title: Text("Employee List"),
      ),
      body: Column(
        children: [
          Text(detailitm.name)
        ],
      ),
    );
  }
}
