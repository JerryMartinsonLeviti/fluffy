import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'message_by_room_listview_widget.dart' show MessageByRoomListviewWidget;
import 'package:flutter/material.dart';

class MessageByRoomListviewModel
    extends FlutterFlowModel<MessageByRoomListviewWidget> {
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
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
