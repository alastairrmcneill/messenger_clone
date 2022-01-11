import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.grey[800],
        ),
        child: TextField(
          style: TextStyle(color: Colors.grey[500]),
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey[500]),
            prefixIcon: Align(
              alignment: Alignment.center,
              widthFactor: 1.0,
              heightFactor: 10.0,
              child: Icon(
                Icons.search,
                color: Colors.grey[500],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
