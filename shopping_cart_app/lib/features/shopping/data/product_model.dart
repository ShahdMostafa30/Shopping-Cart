class Product {
  final String image;
  final String title;
  final double? price;

  const Product({required this.image, required this.title, this.price});

  // Map<String, dynamic> toMap() {
  //   return {
  //     'image': image,
  //     'title': title,
  //     'price': price,
  //   };
  // }

  // factory Product.fromMap(Map<String, dynamic> map) {
  //   return Product(
  //     image: map['image'] ?? '',
  //     title: map['title'] ?? '',
  //     price: map['price']?.toDouble(),
  //   );
  // }
}
