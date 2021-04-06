import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import 'product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  final bool showFabs;
  ProductGrid(this.showFabs);
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = showFabs ? productData.favoriteItems : productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductItem(
            //products[i].id,
            //products[i]
            //   .title, //goes in the class of widget ProductItemproduct_item in the grid tile widget
            //products[i].imageUrl,
            ),
      ),

      ///this is what is built on the screen
      ///the widget is in widget folder product_item , whis is then pointed to this location
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
