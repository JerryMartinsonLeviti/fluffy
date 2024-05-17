// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class CupertinoDatePickerWidget2 extends StatefulWidget {
  const CupertinoDatePickerWidget2({
    super.key,
    this.width,
    this.height,
    this.normalTextColor = Colors.deepOrange,
    this.highlightedTextColor = Colors.yellow,
    required this.onTimeChanged, // Callback
  });

  final double? width;
  final double? height;
  final Color normalTextColor;
  final Color highlightedTextColor;
  final ValueChanged<DateTime> onTimeChanged; // Callback

  @override
  State<CupertinoDatePickerWidget2> createState() =>
      _CupertinoDatePickerWidget2State();
}

class _CupertinoDatePickerWidget2State
    extends State<CupertinoDatePickerWidget2> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return hourMinute15Interval();
  }

  Widget hourMinute15Interval() {
    return new TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(fontSize: 24, color: widget.normalTextColor),
      highlightedTextStyle:
          TextStyle(fontSize: 24, color: widget.highlightedTextColor),
      spacing: 30,
      minutesInterval: 15,
      isForce2Digits: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
          widget.onTimeChanged(_dateTime);
        });
      },
    );
  }
}
