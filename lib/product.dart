import 'package:flutter/material.dart';


class Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;
  Product({
   required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
});
}

List<Product>? products= [
  Product(
      id: 1,
      image: "images/abag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xff3D82AE)),
  Product(
      id: 2,
      image: "images/bbag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xffD3A9F4)),
  Product(
      id: 3,
      image: "images/cbag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xff989493)),
  Product(
      id: 4,
      image: "images/dbag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xffE6B398)),
  Product(
      id: 5,
      image: "images/fbag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xffFB7883)),
  Product(
      id: 6,
      image: "images/gbag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xffAEAEAE)),
  Product(
      id: 7,
      image: "images/hbag.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xff3D82AE)),
  Product(
      id: 8,
      image: "images/red.png",
      title: "office code",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xffFB7883)),


];
   String dummyText = "this is simple dummy text";