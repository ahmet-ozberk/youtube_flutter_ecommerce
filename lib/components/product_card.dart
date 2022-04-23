import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';
import 'package:youtube_ecommerce_app/model/product.dart';
import 'package:youtube_ecommerce_app/view/product_detail.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard({required this.product});
  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: () => Grock.to(ProductDetail(product: product)),
      width: 150,
      decoration: BoxDecoration(
          color: Constant.white,
          borderRadius: 15.allBR,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
            ),
          ]),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.image,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      product.title,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  product.isSaved
                      ? const Icon(Icons.bookmark_border_rounded,
                          color: Constant.black)
                      : const Icon(Icons.bookmark, color: Constant.orange)
                ],
              ),
            ),
            Padding(
              padding: [10, 5].horizontalAndVerticalP,
              child: Text(
                "\$${product.price}",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: [10, 0].horizontalAndVerticalP,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.star_rate_rounded,
                      color: Constant.orange, size: 22),
                  Text(
                    "${product.star}",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
