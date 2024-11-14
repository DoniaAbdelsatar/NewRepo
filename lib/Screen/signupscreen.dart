import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'loginscreen.dart';

class Signupscreen extends StatelessWidget
{
  TextEditingController mycontroller = TextEditingController();
  Signupscreen({super.key});
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

                  hintText: "User Name",
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
                 hintText: "Phone",
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
             bool login = Provider.of(context,listen: false).Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
             if(login)
             {
                 //ScaffoldMessenger.of();
             }
           },
           child: Text("Signup"))
         ],
       )
    );
  }
}

