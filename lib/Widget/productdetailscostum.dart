import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productdetailscostum extends StatelessWidget
{
  String image;
  String name;
  String description;
  Productdetailscostum
  ({
    required this.image,
    required this.name,
    required this.description
  });

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
        body: Card
        (
          child: Column
          (
             children:
             [
               Text(image),
               Text(name),
               Text(description)
             ],
          )
        )
    );
  }
}
