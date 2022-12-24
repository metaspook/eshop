import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class QuantityButtonBar extends StatelessWidget {
  const QuantityButtonBar(
      {super.key,
      required this.quantity,
      this.onTapIncrement,
      this.onTapDecrement});
  final int quantity;
  final GestureTapCallback? onTapIncrement;
  final GestureTapCallback? onTapDecrement;
  @override
  Widget build(BuildContext context) {
    final shotestSide = MediaQuery.of(context).size.shortestSide;
    return Container(
      height: shotestSide * .1125,
      width: shotestSide * .375,
      decoration: BoxDecoration(
          color: const Color(0xFFFFCCE4),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Decrement button.
          GestureDetector(
            onTap: onTapDecrement,
            child: Container(
              height: shotestSide * .0925,
              width: shotestSide * .0925,
              decoration: const BoxDecoration(
                color: Color(0xFFFFBFDD),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.remove,
                color: AppColors.card,
              ),
            ),
          ),
          Text(
            '$quantity পিস',
            style: TextStyle(
                fontSize: shotestSide * .04, color: AppColors.textPrimary),
          ),
          // Increment button.
          GestureDetector(
            onTap: onTapIncrement,
            child: Container(
              height: shotestSide * .0925,
              width: shotestSide * .0925,
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
          ),
        ],
      ),
    );
  }
}
