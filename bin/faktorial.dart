import 'dart:io';

void main() {
  print('Masukkan angka untuk menghitung faktorial: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Masukkan angka yang valid!');
  } else {
    int number = int.tryParse(input) ?? -1;

    if (number == -1) {
      print('Masukkan angka yang valid!');
    } else {
      print('Angka yang dimasukkan: $number');
    }
  }
}
