import 'package:eshop/utils/app_colorization.dart';
import 'package:eshop/widgets/product_card.dart';
import 'package:eshop/widgets/quantity_btn.dart';
import 'package:eshop/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SearchBar(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 200,
                ),
                itemCount: 9,
                itemBuilder: (context, index) => Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: const [
                    Positioned(
                      height: 180,
                      width: 180,
                      child: ProductCard(),
                    ),
                    Positioned(
                      bottom: -10,
                      child: QuantityButton(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
