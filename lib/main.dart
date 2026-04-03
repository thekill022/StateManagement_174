// library
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// state
import 'package:statemanagement_174/provider.dart';
import 'package:statemanagement_174/riverpod.dart';
// import 'package:statemanagement_174/setstate/setstate.dart';
import 'package:statemanagement_174/bloc/blocku.dart';

final namaProvider = StateProvider<String>((ref) => "");
final emailProvider = StateProvider<String>((ref) => "");

void main() {

  // untuk running provider
  // runApp(
  //   ChangeNotifierProvider(
  //     create: (context) => FormProvider(),
  //       child : const MyApp()
  //   )
  // );
  // untuk running riverpod
  // runApp(
  //   ProviderScope(
  //       child: MyApp()
  //   )
  // );
  // untuk running bloc
  runApp(
      BlocProvider(create: (context) => FormBloc(),
      child : const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: FormPage1() // provider
      // home: FormPage2(), // riverpod
      home: FormPage(),
    );
  }
}
