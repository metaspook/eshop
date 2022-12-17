import 'package:equatable/equatable.dart';

import 'detail_image.dart';

class Product extends Equatable {
  const Product({
    required this.id,
    required this.brandName,
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
  final int id;
  final String brandName;
  final String image;
  final num currentCharge;
  final num discountCharge;
  final num sellingPrice;
  final num profit;
  final List<DetailImage> images;
  final String productName;
  final String description;
  final int maximumOrder;
  final int stock;
  final String seller;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] ?? 0,
        brandName: json['brandName'] ?? '',
        //queryString: json['queryString'] as String,
        image: json['image'] ?? '',
        currentCharge: json['currentCharge'] ?? 0,
        discountCharge: json['discountCharge'] ?? 0,
        sellingPrice: json['sellingPrice'] ?? 0,
        profit: json['profit'] ?? 0,
        images: [
          for (final imageJson in json['images'])
            DetailImage.fromJson(imageJson),
        ],
        productName: json['productName'] ?? '',
        description: json['description'] ?? '',
        maximumOrder: json['maximumOrder'] ?? 0,
        stock: json['stock'] ?? 0,
        seller: json['seller'] ?? '',
      );

  @override
  List<Object?> get props {
    return [
      id,
      brandName,
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
