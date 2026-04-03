abstract class FormEvent{}

class NamaChanged extends FormEvent {
  final String nama;
  NamaChanged(this.nama);
}