import 'package:flutter/cupertino.dart';

import '../Model/productmodel.dart';
import '../Service/productservice.dart';

class Productprovider extends ChangeNotifier
{
  ProductModel? datamodelprovider;
  Future dataserviceprovider() async
  {
    datamodelprovider = await ProductService.getdataservice();
    notifyListeners();
  }
}