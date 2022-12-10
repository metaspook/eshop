import 'package:eshop/utils/app_colorization.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF6210E1).withOpacity(.5),
              const Color(0xFF1400AE),
            ]),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add),
        color: AppColors.secondaryColor,
        splashRadius: .2,
      ),
    );
  }
}
