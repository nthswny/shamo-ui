import 'package:flutter/cupertino.dart';
import 'package:shamo_ui/models/product_model.dart';

class WishlistProvider with ChangeNotifier {
  List<ProductModel> _wishlist = [];

  List<ProductModel> get wishList => _wishlist;

  set wishlist(List<ProductModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(ProductModel product) {
    // menambahkan wishlist
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      // jika ada di dalam wishlist maka remove nya
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isWishlist(ProductModel product) {
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
