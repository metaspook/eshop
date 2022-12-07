import 'package:eshop/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 30;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        shadowColor: AppColors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Search bar.
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.card,
                  hintText: 'Search here...',
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_outlined,
                        color: AppColors.searchIcon,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.card,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(height: sizedBoxHeight),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: AppColors.card,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
