import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, this.onTap});

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF6210E1).withOpacity(.75),
                const Color(0xFF1400AE),
              ]),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
          color: AppColors.card,
        ),
      ),
    );
  }
}
