import 'package:eshop/utils/utils.dart';
import 'package:eshop/widgets/stock_out_badge.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
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
                padding: const EdgeInsets.only(bottom: 10),
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 320,
                ),
                itemCount: 9,
                itemBuilder: (context, index) => Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: const [
                    Positioned(
                      height: 290,
                      width: 180,
                      child: ProductCard(),
                    ),
                    Positioned(
                      right: 20,
                      top: 45,
                      child: StockOutBadge(),
                    ),
                    Positioned(
                      bottom: -10,
                      child: QuantityButtonBar(),
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
