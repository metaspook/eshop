import 'package:equatable/equatable.dart';
import 'package:eshop/models/models.dart';

class Product extends Equatable {
  const Product({
    required this.id,
    required this.brandName,
    required this.queryString,
    required this.image,
    required this.currentCharge,
    required this.discountCharge,
    required this.sellingPrice,
    required this.profit,
    required this.images,
    required this.productName,
    required this.description,
    required this.maximumOrder,
    required this.stock,
    required this.seller,
  });
  final String id;
  final String brandName;
  final String queryString;
  final String image;
  final num currentCharge;
  final num discountCharge;
  final num? sellingPrice;
  final num? profit;
  final List<DetailImage> images;
  final String productName;
  final String description;
  final int maximumOrder;
  final int stock;
  final String seller;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as String,
        brandName: json['brandName'] as String,
        queryString: json['queryString'] as String,
        image: json['image'] as String,
        currentCharge: json['currentCharge'] as num,
        discountCharge: json['discountCharge'] as num,
        sellingPrice: json['sellingPrice'] as num,
        profit: json['profit'] as num,
        images: json['images'] as List<DetailImage>,
        productName: json['productName'] as String,
        description: json['description'] as String,
        maximumOrder: json['maximumOrder'] as int,
        stock: json['stock'] as int,
        seller: json['seller'] as String,
      );

  @override
  List<Object?> get props {
    return [
      id,
      brandName,
      queryString,
      image,
      currentCharge,
      discountCharge,
      sellingPrice,
      profit,
      images,
      productName,
      description,
      maximumOrder,
      stock,
      seller,
    ];
  }
}
