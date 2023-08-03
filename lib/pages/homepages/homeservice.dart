import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:techwaretest/pages/modelclass.dart';

class ApiService{
  var url="http://www.mocky.io/v2/5d565297300000680030a986";
  Future<List<Employeeitm>?>apiget()async{
    var gokul= await http.get(Uri.parse(url));
    if(gokul.statusCode==200){
      return employeeitmFromJson(gokul.body);

    }else{
      return null;
    }

  }


}