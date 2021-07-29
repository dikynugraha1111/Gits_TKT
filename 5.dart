import 'dart:io';

bool cekPalindrome(String kata) {
  for (int i = 0; i <= kata.length / 2; i++) {
    int awal = i;
    int akhir = kata.length - i - 1;

    if (kata[awal] != kata[akhir]) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Masukan kata:");
  String kata = stdin.readLineSync()!;
  bool hasil = cekPalindrome(kata);
  print(hasil);
}
