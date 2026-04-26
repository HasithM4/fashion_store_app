import 'cart_item.dart';

class CartService {
  static final List<CartItem> cartItems = [];

  static void addToCart(CartItem item) {
    final index = cartItems.indexWhere(
      (existingItem) => existingItem.name == item.name,
    );

    if (index != -1) {
      cartItems[index].quantity++;
    } else {
      cartItems.add(
        CartItem(name: item.name, price: item.price, image: item.image),
      );
    }
  }

  static void removeFromCart(int index) {
    cartItems.removeAt(index);
  }

  static void clearCart() {
    cartItems.clear();
  }
}
