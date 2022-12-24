import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:eshop/models/cart_product.dart';
import 'package:eshop/models/products.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  final _cartQuantity = 5;

  bool contains(Product product) {
    final CartProduct cartProduct =
        CartProduct.fromProduct(product: product, quantity: _cartQuantity);

    return state.cartProducts.contains(cartProduct);
  }

  void add(Product product) {
    final CartProduct cartProduct =
        CartProduct.fromProduct(product: product, quantity: _cartQuantity);
    final cartProducts = [
      ...state.cartProducts,
      cartProduct,
    ];
    emit(
      state.copyWith(
        cartProducts: cartProducts,
      ),
    );
  }

  void remove(Product product) {
    final CartProduct cartProduct =
        CartProduct.fromProduct(product: product, quantity: _cartQuantity);
    final cartProducts = state.cartProducts..remove(cartProduct);
    emit(state.copyWith(cartProducts: cartProducts));
  }
}
