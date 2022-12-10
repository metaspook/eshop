import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final shotestSide = MediaQuery.of(context).size.shortestSide;
    const double sizedBoxHeight = 20;
    final themeData = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColors.card,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LimitedBox(
              maxHeight: shotestSide * .3,
              maxWidth: shotestSide * .3,
              child: Image.network(
                'https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1383/%E0%A6%B8%E0%A6%9C_4.png',
                // fit: BoxFit.fill,
              ),
            ),
            Text(
              'Lays Classic Family Chips',
              style: themeData.textTheme.headline6,
            ),
            const SizedBox(height: sizedBoxHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('   ক্রয়: ৳ 20.00'),
                Text('৳ 22.00'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('বিক্রয়: ৳ 25.00'),
                Text('লাভ: ৳ 25.00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
