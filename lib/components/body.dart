import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/category.dart';
import 'package:onlineshop/detailscreen.dart';
import 'itemcard.dart';
import 'package:onlineshop/models/constant.dart';
import 'package:onlineshop/product.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: RichText(
            text: const TextSpan(text: "W",style: TextStyle(fontSize: 35,color: Colors.blue,fontWeight: FontWeight.bold),
            children:<TextSpan> [
              TextSpan(text: "OMEN",style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35),
            ),]
            ),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 childAspectRatio: 0.75,
                 mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding
              ),
              itemBuilder: (context, index) => ItemCard(product: products![index],
                press:()=> Navigator.push(context, MaterialPageRoute(
                    builder:(context) => DetailScreen(
                      product: products![index],
                    ),
                ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

