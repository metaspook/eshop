import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class StockOut extends StatelessWidget {
  const StockOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.quantityColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      child: const Text(
        "স্টকে নেই",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
