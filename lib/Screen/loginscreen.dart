import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_exam/Screen/productscreen.dart';

class Loginscreen extends StatelessWidget
{
  TextEditingController mycontroller = TextEditingController();
  Loginscreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Column
      (
        children:
        [
          TextFormField
          (
            controller: mycontroller,
            decoration: InputDecoration
            (
                hintText: "Email",
                border: OutlineInputBorder
                (
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
          TextFormField
            (
            controller: mycontroller,
            decoration: InputDecoration
              (
                hintText: "Password",
                border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
          TextButton(onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
          },
              child: Text("Login"))
        ],

      ),
    );
  }
}
