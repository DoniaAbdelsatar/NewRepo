import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productcostum extends StatelessWidget
{
  String image;
  String name;
  Productcostum
 ({
    required this.image,
    required this.name,
 });

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Column
      (
        children:
        [
          Text(image),
          Text(name),
        ],
      )
    );
  }
}
