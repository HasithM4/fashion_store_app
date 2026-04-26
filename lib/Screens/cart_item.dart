class CartItem {
  final String name;
  final double price;
  final String image; // ✅ ADD THIS
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    required this.image, // ✅ ADD THIS
    this.quantity = 1,
  });
}
