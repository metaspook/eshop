import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 0,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    );
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Here...',
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: Color.fromARGB(255, 107, 107, 107),
            size: 24,
          ),
        ),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}
