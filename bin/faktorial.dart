import 'dart:io';

void main() {
  print('Masukkan angka:');

  int number = int.parse(stdin.readLineSync()!);

  print('Angka yang Anda masukkan adalah: $number');
}
