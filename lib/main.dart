import 'package:eshop/blocs/cart/cart_cubit.dart';
import 'package:eshop/blocs/products/product_page_cubit.dart';
import 'package:eshop/eshop_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductPageCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: const EShopApp(),
    ),
  );
}
