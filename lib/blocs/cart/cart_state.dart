// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_cubit.dart';

class CartState extends Equatable {
  const CartState({required this.cartProducts});
  factory CartState.initial() => const CartState(cartProducts: []);
  final List<CartProduct> cartProducts;

  @override
  List<Object> get props => [cartProducts];

  CartState copyWith({
    List<CartProduct>? cartProducts,
  }) {
    return CartState(
      cartProducts: cartProducts ?? this.cartProducts,
    );
  }
}
