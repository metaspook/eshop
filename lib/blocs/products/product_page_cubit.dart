import 'package:bloc/bloc.dart';
import 'package:eshop/blocs/products/product_page_state.dart';
import 'package:eshop/repositories/products.dart';

class ProductPageCubit extends Cubit<ProductPageState> {
  ProductPageCubit() : super(ProductPageState.initial());
  final _productRepo = ProductsRepo();

  void loadProducts() async {
    await _productRepo.getProducts().then(
          (products) => emit(
            state.copyWith(
                products: products,
                isLoading: false,
                productPageStatus: ProductPageStatus.loaded),
          ),
        );
  }
}
