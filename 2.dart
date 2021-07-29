import 'dart:io';

void cekEmail(String email) {
  const formatId = r'^[A-Za-z0-9._%+-]{1,20}@[A-Za-z0-9-]+\.id$';
  const formatCoId = r'^[A-Za-z0-9._%+-]{1,20}@[A-Za-z0-9-]+\.co\.id$';
  final regExpId = RegExp(formatId);
  final regExpCoId = RegExp(formatCoId);

  if (email == null || email.isEmpty) {
    print("Email tidak valid");
  } else if (regExpId.hasMatch(email) || regExpCoId.hasMatch(email)) {
    print("Email Valid");
  } else if (!regExpId.hasMatch(email) || !regExpCoId.hasMatch(email)) {
    print("Email Tidak Valid");
  }
}

void main() {
  print("Silahkan masukan Email anda:");
  String email = stdin.readLineSync()!;
  cekEmail(email);
}
