import 'package:flutter/material.dart';
import 'package:shopping_cart_app/features/shopping/data/products.dart';
import 'package:shopping_cart_app/features/shopping/data/product_model.dart';

class ProductsPageView extends StatefulWidget {
  const ProductsPageView({super.key});

  @override
  State<ProductsPageView> createState() => _ProductsPageViewState();
}

class _ProductsPageViewState extends State<ProductsPageView> {
  PageController controller = PageController();
  int currPage = 0;

  final List<Product> products = ProductsData.allProducts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(
          'Featured Products',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PageView.builder(
              controller: controller,
              itemCount: 3,
              onPageChanged: (index) {
                setState(() {
                  currPage = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(products[index].image, fit: BoxFit.cover),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            products[index].title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => Container(
              margin: EdgeInsets.all(6),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currPage == index ? Color(0xFF6a78e0) : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
