import 'package:eshop/models/product.dart';
import 'package:eshop/repositories/products_repo.dart';
import 'package:eshop/utils/utils.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsRepo().getProducts().then(
      (value) {
        debugPrint(value.toString());
      },
    );

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
                itemBuilder: (context, index) {
                  const product = Product(
                    id: 1,
                    brandName: "brandName",
                    //queryString: "queryString",
                    image:
                        "https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1380/Add_a_heading_1.png",
                    currentCharge: 20.00,
                    discountCharge: 2.00,
                    sellingPrice: 25.00,
                    profit: 25.00,
                    images: [],
                    productName: "নুরজাহান সুপার ফাইন চাল - ৫০ কেজি",
                    description: "description",
                    maximumOrder: 12,
                    stock: 0,
                    seller: "seller",
                  );
                  const cardQuantity = 1;
                  return Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      const Positioned(
                        height: 290,
                        width: 180,
                        child: ProductCard(
                          product: product,
                        ),
                      ),
                      if (product.stock == 0)
                        const Positioned(
                          right: 20,
                          top: 45,
                          child: StockOutBadge(),
                        ),
                      if (cardQuantity == 0)
                        const Positioned(
                          bottom: -10,
                          child: AddToCart(),
                        ),
                      if (cardQuantity > 0)
                        const Positioned(
                          bottom: -10,
                          child: QuantityButtonBar(),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
