import 'package:eshop/blocs/cart/cart_cubit.dart';
import 'package:eshop/blocs/products/product_page_cubit.dart';
import 'package:eshop/blocs/products/product_page_state.dart';
import 'package:eshop/utils/utils.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productPageCubit = context.read<ProductPageCubit>();
    final cartCubit = context.read<CartCubit>();
    productPageCubit.loadProducts();
    const double sizedBoxHeight = 30;
    final shotestSide = MediaQuery.of(context).size.shortestSide;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        shadowColor: AppColors.scaffoldBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            // Search bar.
            const SizedBox(
              height: 30,
            ),
            const SearchBar(),
            const SizedBox(height: sizedBoxHeight),
            BlocBuilder<ProductPageCubit, ProductPageState>(
                builder: (context, state) {
              if (!state.isLoading) {
                return Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(bottom: 25),
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // mainAxisExtent: 220,
                      childAspectRatio: .63,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final product = state.products[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        child: BlocBuilder<CartCubit, CartState>(
                          builder: (context, state) {
                            return Stack(
                              clipBehavior: Clip.none,
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Positioned(
                                  // top: 20,
                                  height: shotestSide * .715,
                                  width: 200,
                                  child: ProductCard(
                                    product: product,
                                  ),
                                ),
                                if (state.cartProducts.contains(product))
                                  Positioned(
                                    bottom: -10,
                                    child: QuantityButtonBar(
                                      quantity: 5,
                                      onTapIncrement: () =>
                                          cartCubit.add(product),
                                      onTapDecrement: () =>
                                          cartCubit.remove(product),
                                    ),
                                  ),
                                if (!state.cartProducts.contains(product))
                                  Positioned(
                                      bottom: -10,
                                      child: AddToCartButton(
                                        onTap: () => cartCubit.add(product),
                                      )),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }),
          ],
        ),
      ),
    );
  }
}
