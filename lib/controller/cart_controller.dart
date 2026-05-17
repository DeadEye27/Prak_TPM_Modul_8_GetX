import 'package:get/get.dart';
import '../model/product.dart';

class CartController extends GetxController {
  // Menyimpan daftar produk di keranjang menggunakan RxList
  final RxList<Product> cartItems = <Product>[].obs;

  // Method untuk menambah produk
  void addToCart(Product product) {
    cartItems.add(product);
    Get.snackbar(
      "Sukses", 
      "${product.title} ditambahkan ke keranjang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method untuk menghapus produk
  void removeFromCart(Product product) {
    cartItems.remove(product);
    Get.snackbar(
      "Dihapus", 
      "${product.title} dihapus dari keranjang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method (Getter) untuk menghitung total harga
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
}