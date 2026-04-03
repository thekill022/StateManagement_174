import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class FormPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("riverpod"),),
    )
  }
}
