import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/productprovider.dart';
import '../Widget/productcostum.dart';
import '../Widget/productdetailscostum.dart';

class ProductScreen extends StatelessWidget
{
 const ProductScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(),
      body: Consumer<Productprovider>
      (
        builder: (context, objectprovider, child)
        {
          var objectmodel = objectprovider.datamodelprovider;
          if(objectmodel == null)
          {
            objectprovider.dataserviceprovider();
            return Center
              (
              child: CircularProgressIndicator(),
            );
          }
          else
          {
            return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index)
                {
                  return GestureDetector
                  (
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Productdetailscostum
                         (
                          image: objectmodel.products[index]["image"],
                          name: objectmodel.products[index]["name"],
                          description: objectmodel.products[index]["description"],
                        ),));
                      },
                      child: Productcostum
                      (
                        image: objectmodel.products[index]["image"],
                        name: objectmodel.products[index]["name"],
                      )
                  );
                },
                itemCount: objectmodel.products.length
            );
          }
        },
      )
    );
  }
}