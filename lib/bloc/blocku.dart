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
