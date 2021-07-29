import 'dart:ffi';
import 'dart:io';

void reverse(String kalimat) {
  int panjang = kalimat.length - 1;

  for (int i = panjang; i >= 0; i--) {
    stdout.write(kalimat[i]);
  }
}

void main() {
  print("Masukan kata:");
  String kata = stdin.readLineSync()!;
  reverse(kata);
}
