import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

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
              "https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1380/Add_a_heading_1.png",
              width: 148,
              height: 148,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "নুরজাহান সুপার ফাইন চাল - ৫০ কেজি",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'ক্রয়:',
                  style:
                      TextStyle(fontSize: 10, color: AppColors.secondaryText1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '৳ 20.00',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  '৳ 22.00',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'বিক্রয়:',
                  style:
                      TextStyle(fontSize: 10, color: AppColors.secondaryText1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '৳ 25.00',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.secondaryText1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'লাভ:',
                  style:
                      TextStyle(fontSize: 10, color: AppColors.secondaryText1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '৳ 25.00',
                  style: TextStyle(
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
