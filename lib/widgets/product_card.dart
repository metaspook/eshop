import 'package:eshop/utils/app_colorization.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppColors.secondaryColor,
      elevation: 0,
    );
  }
}
