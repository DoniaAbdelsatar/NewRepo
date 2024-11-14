import 'package:dio/dio.dart';

class Registretionservice
{
   static Dio dio = Dio();
   static Future Signup({required String username,required String phone, required String email,required String password}) async
   {
      try
      {
         Response responce = await dio.post
         (
             "https://student.valuxapps.com/api/registe",
             data:
             ({
                "name": username,
                "phone": phone,
                "email":  email
             })
         );
         if(responce?.statusCode == true)
         {
             print(responce.data);
             return true;
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

   static Future Login({required String email,required String password}) async
   {
      try
      {
         Response responce = await dio.post
            (
             "uYz90SKwqBK7FKesNOJMOvl3aZlC9BttTiRLX4XbgPLvSFtDAUeX73Vrj9niLV8omxRJnz",
             data:
             ({
                "email":  email,
                "password":password
             })
         );
         if(responce?.statusCode == true)
         {
            print(responce.data);
            return true;
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