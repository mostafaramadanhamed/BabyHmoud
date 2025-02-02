import 'package:shopify_flutter/shopify_flutter.dart';

import 'store_repo_abstraction.dart';

class StoreRepoImpl implements StoreRepoAbstraction {
    ShopifyStore shopifyStore = ShopifyStore.instance;

  @override
  Future<List<Collection>> getAllCollections() async{
    return await shopifyStore.getAllCollections();
    
  }

  @override
  Future<List<Product>> getAllProductsFromCollectionById(String id)async {
    return await shopifyStore.getAllProductsFromCollectionById(id);
  }

  @override
  Future<List<Product>?> searchProducts(String query,
      {int limit = 15,
      String? startCursor,
      SearchSortKeys sortKey = SearchSortKeys.RELEVANCE,
      bool reverse = false,
      Map<String, dynamic>? filters}) {
    return shopifyStore.searchProducts(query,
        limit: limit,
        startCursor: startCursor,
        sortKey: sortKey,
        reverse: reverse,
        filters: filters);
  }
}