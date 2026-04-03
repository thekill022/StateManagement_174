import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class FormEvent{}

class NamaChanged extends FormEvent {
  final String nama;
  NamaChanged(this.nama);
}

class EmailChanged extends FormEvent {
  final String email;
  EmailChanged(this.email);
}

class FormState {
  final String nama;
  final String email;

  FormState({this.nama = "", this.email = ""});
}

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(FormState()) {
    on<NamaChanged>((event, emit) {
      emit(FormState(nama: event.nama, email: state.email));
    });

    on<EmailChanged>((event, emit) {
      emit(FormState(nama: state.nama, email: event.email));
    });
  }
}

class FormPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form bloc'),),
    );
  }
}

