import 'package:flutter/cupertino.dart';

class FormProvider extends ChangeNotifier {
  String nama = "";
  String email = "";

  void setNama(String value) {
    nama = value;
    notifyListeners();
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

}