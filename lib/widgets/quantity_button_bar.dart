import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class QuantityButtonBar extends StatelessWidget {
  const QuantityButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 140,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: AppColors.buttonBarBackGround,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: const BoxDecoration(
                color: AppColors.decrementButton,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(Icons.remove),
                color: AppColors.secondaryColor,
                splashRadius: .2,
              ),
            ),
            const Text(
              "2005 পিস",
              style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: AppColors.linearGradientAdd2Cart,
                ),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(Icons.add),
                color: AppColors.secondaryColor,
                splashRadius: .2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
