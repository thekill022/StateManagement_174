import 'package:flutter/cupertino.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  String hasil = "";

  void submitData() {
    setState(() {
      hasil = "Nama = ${namaController.text}\nEmail = ${emailController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
