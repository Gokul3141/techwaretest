import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return  Container(
      width: screenWidth * 0.3,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent[400],
        borderRadius: BorderRadius.circular(10),

      ),
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
         // hintText  : "search",
          labelStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
