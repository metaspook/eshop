import 'package:eshop/utils/utils.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 30;
    final shotestSide = MediaQuery.of(context).size.shortestSide;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        shadowColor: AppColors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            // Search bar.
            const SearchBar(),
            const SizedBox(height: sizedBoxHeight),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(bottom: 25),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisExtent: 220,
                  childAspectRatio: .63,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Positioned(
                        // top: 20,
                        height: shotestSide * .715,
                        width: 200,
                        child: const ProductCard(),
                      ),
                      const Positioned(
                        bottom: -10,
                        child: QuantityButtonBar(),
                      ),
                    ],
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
