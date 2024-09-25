import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  State<SearchInput> createState() => _SearchInputState();
  
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, left: 25.0, right: 25.0, bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1)),
        ]),
        child: TextField(
          onChanged: (value) {
            //Do something wi
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ),
      ),
    );
  }
}
