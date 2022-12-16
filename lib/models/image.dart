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
        id: json['id'] as int,
        image: json['image'] as String,
        isPrimary: json['isPrimary'] as bool,
        product: json['product'] as int,
      );
}
