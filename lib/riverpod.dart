import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement_174/main.dart';

class FormPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final nama = ref.watch(namaProvider);
    final email = ref.watch(emailProvider);

    return Scaffold(
      appBar: AppBar(title: Text("form riverpod"),),
      body: Padding(
          padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Nama",),
              onChanged: (value) => ref.read(namaProvider.notifier).state = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Email",),
              onChanged: (value) => ref.read(emailProvider.notifier).state = value,
            ),
          ],
        ),
      ),
    )
  }
}
