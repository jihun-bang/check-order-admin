import 'dart:convert';

import 'package:flutter/services.dart';

class Utils {
  const Utils._();

  static String icon(String icon) => 'assets/icons/icon_$icon';

  static String image(String image) => 'assets/images/img_$image';

  static Future<dynamic> loadJsonFile(String fileName) async {
    final data = await rootBundle.loadString('assets/data/$fileName.json');
    return json.decode(data);
  }

  static String secondToTimestamp(int time) {
    final duration = Duration(seconds: time);
    return duration.toString().split('.').first.padLeft(8, "0");
  }

  static String secondToMinutesTimestamp(int time) {
    int minutes = time ~/ 60;
    int remainingSeconds = time % 60;

    String formattedTime =
        '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';

    return formattedTime;
  }
}
