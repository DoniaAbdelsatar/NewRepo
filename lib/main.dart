import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/productprovider.dart';
import 'Provider/registretionprovider.dart';
import 'Screen/homescreen.dart';
import 'Screen/productscreen.dart';
import 'Screen/signupscreen.dart';


void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MultiProvider
    (
        providers:
        [
          ChangeNotifierProvider(create: (context) => Productprovider(),),
          ChangeNotifierProvider(create: (context) => RegistretionProvider(),)
        ],
        child: MaterialApp
        (
          debugShowCheckedModeBanner: false,
          home: ProductScreen(),
        ),
    );
  }
}