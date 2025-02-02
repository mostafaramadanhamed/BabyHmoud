import 'package:shopify_flutter/shopify_flutter.dart';

abstract class StoreRepoAbstraction {
  Future<List<Collection>> getAllCollections();
  Future<List<Product>> getAllProductsFromCollectionById(String id);

  Future<List<Product>?> searchProducts(String query,
      {int limit = 15,
      String? startCursor,
      SearchSortKeys sortKey = SearchSortKeys.RELEVANCE,
      bool reverse = false,
      Map<String, dynamic>? filters});
}
