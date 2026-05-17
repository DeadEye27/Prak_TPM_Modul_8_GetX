import 'package:get/get.dart';
import '../controller/product_controller.dart';
import '../controller/cart_controller.dart';
import '../view/pages/product_detail_page.dart';
import '../view/pages/product_page.dart';
import '../view/pages/cart_page.dart';
import 'app_routes.dart';

// Binding untuk ProductPage
class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
    Get.put(CartController());
  }
}

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}

// Daftar semua halaman/route dalam aplikasi
class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.products,
      page: () => ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => ProductDetailPage(),
    ),
    // Route untuk CartPage lengkap dengan Binding-nya
    GetPage(
      name: AppRoutes.cart,
      page: () => CartPage(),
      binding: CartBinding(),
    ),
  ];
}