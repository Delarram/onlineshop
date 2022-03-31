import 'package:flutter/material.dart';
import 'package:onlineshop/category.dart';
import 'package:onlineshop/detailscreen.dart';

import 'package:onlineshop/models/constant.dart';
import 'package:onlineshop/product.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Monospace',
                fontSize: 35),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                 mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding
              ),
              itemBuilder: (context, index) => ItemCard(product: products![index],
                press:()=> Navigator.push(context, MaterialPageRoute(
                    builder:(context) => DetailScreen(
                      product: products![index],
                    ) )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class ItemCard extends StatelessWidget {
  final Product  product;
  final Function press;

  const  ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()=> press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),

            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(products![1].image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(product.title,
              style: TextStyle(color: kLightColor),
            ),
          ),
          Text('\$${product.price}',style: TextStyle(fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}
