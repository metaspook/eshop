import 'package:eshop/models/models.dart';
import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              product.image,
              width: 148,
              height: 148,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              product.productName,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.secondaryText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'ক্রয়:',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondaryText1,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                //current Price
                Text(
                  '৳ ${product.currentCharge}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  '৳ ${product.discountCharge}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'বিক্রয়:',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondaryText1,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '৳ ${product.sellingPrice}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.secondaryText1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'লাভ:',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondaryText1,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '৳ ${product.profit}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.secondaryText1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
