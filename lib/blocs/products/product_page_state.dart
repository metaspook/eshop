// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:eshop/models/products.dart';

enum ProductPageStatus {
  initial,
  loaded,
}

// Optimal way

class ProductPageState extends Equatable {
  const ProductPageState(
      {required this.products,
      required this.isLoading,
      required this.productPageStatus});

  factory ProductPageState.initial() => const ProductPageState(
      products: [],
      isLoading: true,
      productPageStatus: ProductPageStatus.initial);

  final List<Product> products;
  final bool isLoading;
  final ProductPageStatus productPageStatus;

  @override
  List<Object> get props => [products, isLoading, productPageStatus];

  ProductPageState copyWith({
    List<Product>? products,
    bool? isLoading,
    ProductPageStatus? productPageStatus,
  }) {
    return ProductPageState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      productPageStatus: productPageStatus ?? this.productPageStatus,
    );
  }
}
     
//         Standard way
// class ProductPageStateInitial extends ProductPageState {
//   ProductPageStateInitial() : super(products: []);
// }

// class ProductPageStateLoading extends ProductPageState {
//   ProductPageStateLoading({required List<Product> products})
//       : super(products: []);
// }

// class ProductPageStateLoaded extends ProductPageState {
//   const ProductPageStateLoaded({required super.products});
// }
