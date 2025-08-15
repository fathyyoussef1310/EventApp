import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension FormatTimeOfDay on TimeOfDay {
  String get to24HourFormat {
    final now = DateTime.now();
    final dateTime = DateTime(now.year, now.month, now.day, hour, minute);
    return DateFormat("HH:mm").format(dateTime);
  }
  String get to12HourFormat {
    final now = DateTime.now();
    final dateTime = DateTime(hour, minute);
    return DateFormat.jm().format(dateTime);
  }
  String get hourOnly {
    return hour.toString().padLeft(2, '0');
  }
  String get minuteOnly {
    return minute.toString().padLeft(2, '0');
  }
}
