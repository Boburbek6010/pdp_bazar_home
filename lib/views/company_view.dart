import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/models/product_model.dart';

class CompanyView extends StatelessWidget {
  static const id = "/company_view";
  final Product product;

  const CompanyView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(product.images[0]),
            ),
          ),
        ),
        const SizedBox(height: 13),
        Text(
          product.title,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        )
      ],
    );
  }
}
