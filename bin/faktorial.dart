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
      int result = calculateFactorial(number);
      print('Faktorial dari $number adalah $result');
    }
  }
}

// Fungsi untuk menghitung faktorial
int calculateFactorial(int number) {
  int factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  return factorial;
}
