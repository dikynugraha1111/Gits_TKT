import 'dart:io';

void cek(int number) {
  if (number % 3 == 0 && number % 5 == 0) {
    print("Hello World");
  } else if (number % 3 == 0) {
    print("Hello");
  } else if (number % 5 == 0) {
    print("World");
  } else {
    print(number);
  }
}

void main() {
  print("Silahkan Masukan Angka :");
  int number = int.parse(stdin.readLineSync()!);
  cek(number);
}
