import 'package:flutter/material.dart';
import 'package:onlineshop/models/constant.dart';
import 'package:onlineshop/components/body.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,size: 35
          ),
          onPressed: (){},
        ),
      actions: [
        IconButton(
            icon: Icon(Icons.search,color: Colors.black,size: 35
            ),
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPadding /2,),
        IconButton(onPressed: (){},
            icon: Icon(Icons.shopping_cart,color: Colors.black,size: 35
            ),
        ),
        SizedBox(width: kDefaultPadding /2,)
      ],
      ),
      body: Body(),
    );
  }
}

