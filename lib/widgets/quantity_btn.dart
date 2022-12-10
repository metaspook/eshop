import 'package:eshop/utils/app_colorization.dart';
import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: AppColors.buttonBackGround,
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: AppColors.decrementButton,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove),
              color: AppColors.secondaryColor,
              splashRadius: .2,
            ),
          ),
          const Text(
            "5 পিস",
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
