import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_exam/Screen/productscreen.dart';

class Homescreen extends StatelessWidget
{
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      children:
      [
        TextButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
        }, child: Text("Product Page")),
        /*TextButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Signupscreen()));
        }, child: Text("Sign Up"))*/
      ],
    );
  }
}
