class ShopModel {
  final String name;
  final String address;
  final double rating;
  final double distance;
  final int productQuantity;
  final String image;

  const ShopModel(
      {required this.name,
      required this.address,
      required this.rating,
      required this.distance,
      this.image = '',
      this.productQuantity = 0});
}
