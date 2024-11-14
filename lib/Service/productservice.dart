import 'package:dio/dio.dart';
import '../Model/productmodel.dart';

class ProductService
{
  static Dio dio = Dio();
  static Future getdataservice()async
  {
    try
    {
      var URL = "https://student.valuxapps.com/api/home";
      var responce = await dio.get(URL);
      if(responce.statusCode == 200)
      {
        return ProductModel.fromjson(responce.data);
      }
      else
      {
        throw Exception("Error please chick your link");
      }
    }
    catch(e)
    {
      throw Exception("Error please try again $e");
    }
  }
}