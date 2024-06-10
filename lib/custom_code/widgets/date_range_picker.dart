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

import 'package:custom_date_range_picker/custom_date_range_picker.dart';

class DateRangePicker extends StatefulWidget {
  const DateRangePicker({
    super.key,
    this.width,
    this.height,
    this.startDate,
    this.endDate,
    this.applyAction,
  });

  final double? width;
  final double? height;
  final DateTime? startDate;
  final DateTime? endDate;
  final Future Function(DateTime? start, DateTime? end)? applyAction;

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    super.initState();
    startDate = widget.startDate;
    endDate = widget.endDate;
  }

  void _showDateRangePicker() {
    showCustomDateRangePicker(
      context,
      dismissible: true,
      minimumDate: DateTime.now().subtract(const Duration(days: 30)),
      maximumDate: DateTime.now().add(const Duration(days: 30)),
      endDate: endDate,
      startDate: startDate,
      backgroundColor: Colors.white,
      primaryColor: Colors.green,
      onApplyClick: (start, end) {
        setState(() {
          endDate = end;
          startDate = start;
        });

        if (widget.applyAction != null) {
          widget.applyAction!(start, end);
        }
      },
      onCancelClick: () {
        setState(() {
          endDate = null;
          startDate = null;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.width ?? double.infinity,
      height: this.widget.height ?? double.infinity,
      child: ElevatedButton(
        onPressed: _showDateRangePicker,
        child: Text('Select Date Range'),
      ),
    );
  }
}
