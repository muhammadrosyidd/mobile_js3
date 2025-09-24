import 'dart:io';

void main() {
  print('Masukkan angka untuk menghitung faktorial: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Masukkan angka yang valid!');
  } else {
    int number = int.tryParse(input) ?? -1;

    if (number == -1 || number < 0) {
      print('Masukkan angka yang valid (angka positif)!');
    } else {
      int result = calculateFactorial(number);
      print('Faktorial dari $number adalah $result');
    }
  }
}

// Fungsi untuk menghitung faktorial dengan optimasi
int calculateFactorial(int number) {
  if (number == 0 || number == 1) { // Optimasi: Faktorial 0 dan 1 adalah 1
    return 1;
  }

  int factorial = 1;
  for (int i = 2; i <= number; i++) { // Mulai dari 2 untuk optimasi
    factorial *= i;
  }
  return factorial;
}
