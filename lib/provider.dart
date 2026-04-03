
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

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
