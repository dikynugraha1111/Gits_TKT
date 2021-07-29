import 'dart:io';

void timeSplit(String time) {
  var splitDayNight = time.split(" ");

  var splitTime = splitDayNight[0].split(new RegExp(r"[:]"));

  if (int.parse(splitTime[0]) <= 12 &&
      int.parse(splitTime[0]) >= 0 &&
      int.parse(splitTime[1]) >= 0 &&
      int.parse(splitTime[1]) <= 59) {
    if (splitDayNight[1] == "AM" || splitDayNight[1] == "am") {
      if (int.parse(splitTime[0]) == 12) {
        print("00:" + splitTime[1]);
      } else if (int.parse(splitTime[0]) < 12) {
        print(splitTime[0] + ":" + splitTime[1]);
      }
    } else if (splitDayNight[1] == "PM" || splitDayNight[1] == "pm") {
      if (int.parse(splitTime[0]) == 12) {
        print("12:" + splitTime[1]);
      } else if (int.parse(splitTime[0]) < 12) {
        num timePM = 12 + num.parse(splitTime[0]);
        print(timePM.toString() + ":" + splitTime[1]);
      }
    }
  } else {
    print("Format Waktu Salah");
  }
}

void main() {
  print("Silahkan masukan Waktu");
  print("Contoh Format => 12:00:00 AM");
  String time = stdin.readLineSync()!;
  timeSplit(time);
}
