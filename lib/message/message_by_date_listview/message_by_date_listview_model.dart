import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/message_component/message_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'message_by_date_listview_widget.dart' show MessageByDateListviewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessageByDateListviewModel
    extends FlutterFlowModel<MessageByDateListviewWidget> {
  ///  Local state fields for this component.

  int myRoomPK = 0;

  ///  State fields for stateful widgets in this component.

  Completer<List<RmuViewRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
