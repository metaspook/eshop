class DetailImage {
  DetailImage({
    required this.id,
    required this.image,
    required this.isPrimary,
    required this.product,
  });
  final int id;
  final String image;
  final bool isPrimary;
  final int product;

  factory DetailImage.fromJson(Map<String, dynamic> json) => DetailImage(
        id: json['id'] ?? 0,
        image: json['image'] ?? '',
        isPrimary: json['isPrimary'] ?? false,
        product: json['product'] ?? 0,
      );

  @override
  String toString() {
    return 'DetailImage(id: $id, image: $image, isPrimary: $isPrimary, product: $product)';
  }
}
