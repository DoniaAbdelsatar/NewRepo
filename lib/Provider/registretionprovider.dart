import 'package:flutter/material.dart';

import '../Model/registerationmodel.dart';
import '../Service/registretionservice.dart';

class RegistretionProvider extends ChangeNotifier
{
  RegisterationModel? datamodelprovider;
  Future SignupProvider({required String Name, required String Phone, required String Email, required String Password}) async
  {
    datamodelprovider = await Registretionservice.Signup
    (
        username: Name,
        phone: Phone,
        email: Email,
        password: Password,
    );
    notifyListeners();
  }
  Future LoginProvider({required String Email, required String Password}) async
  {
    datamodelprovider = await Registretionservice.Login
    (
        email: Email,
        password: Password
    );
    notifyListeners();
  }
}