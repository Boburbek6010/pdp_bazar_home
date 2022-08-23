import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/models/product_model.dart';
import 'package:pdp_bazar_home/services/mock_data.dart';

class ProductView extends StatelessWidget {
  static const id = "/product_view";
  Product product;
  ProductView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 320,
            child: Column(
              children: [
                //image
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25, top: 10, right: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade300,
                    ),
                    child: Image.network(productsMock.first['images'][2]),
                  ),
                ),
                //detail
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Colors.black,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productsMock.first["title"]+"..", style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: [
                            Icon(Icons.star_half),
                            SizedBox(width: 4,),
                            Text('4.5', style: TextStyle(fontSize: 16),),
                            SizedBox(width: 8,),
                            Text('|'),
                            SizedBox(width: 12,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.shade400,
                              ),
                              width: 80,
                              height: 20,
                              child: Center(
                                child: Text("${product.price} \$ sold", style: TextStyle(
                                  fontSize: 13,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        Text("\$${productsMock.first["price"]}", style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 320,
            child: Column(
              children: [
                //image
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25, top: 10, left: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade300,
                    ),
                    child: Image.network(productsMock.first['images'][1]),
                  ),
                ),
                //detail
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Colors.black,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productsMock.last["title"]+"..", style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: [
                            const Icon(Icons.star_half),
                            const SizedBox(width: 4,),
                            const Text('4.5', style: TextStyle(fontSize: 16),),
                            const SizedBox(width: 8,),
                            const Text('|'),
                            const SizedBox(width: 12,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.shade400,
                              ),
                              width: 80,
                              height: 20,
                              child: Center(
                                child: Text("${productsMock.last["price"].toString()} \$ sold", style: const TextStyle(
                                  fontSize: 13,
                                ),),
                              ),
                            ),
                          ],
                        ),
                        Text("\$${productsMock.last["price"]}", style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
