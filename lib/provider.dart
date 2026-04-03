
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    final form = Provider.of<FormProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Form Provider"),),
      body: Padding(
          padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Nama"),
              onChanged: form.setNama,
            ),
            TextField(
              decoration: InputDecoration(labelText: "email"),
              onChanged: form.setEmail,
            ),
          ],
        ),
      ),
    )
  }
}
