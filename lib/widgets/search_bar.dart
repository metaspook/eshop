import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.card,
      ),
      borderRadius: BorderRadius.circular(20),
    );
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.card,
        hintText: 'Search here...',
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: AppColors.searchIcon,
            )),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}
