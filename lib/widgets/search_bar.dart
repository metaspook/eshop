import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 0,
        color: AppColors.secondaryColor,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    );
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Here...',
        filled: true,
        fillColor: AppColors.secondaryColor,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: AppColors.searchIconColor,
            size: 24,
          ),
        ),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}
