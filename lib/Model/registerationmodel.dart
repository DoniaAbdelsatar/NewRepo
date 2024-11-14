class RegisterationModel
{
   bool status;
   RegisterationModel
   ({
      required this.status
   });
   factory RegisterationModel.fromjson(Map<String,dynamic>json)
   {
     return RegisterationModel(status: json["status"]);
   }
}