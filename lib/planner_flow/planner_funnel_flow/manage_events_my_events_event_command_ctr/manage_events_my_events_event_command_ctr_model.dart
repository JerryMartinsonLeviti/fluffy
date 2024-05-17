import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_events_my_events_event_command_ctr_widget.dart'
    show ManageEventsMyEventsEventCommandCtrWidget;
import 'package:flutter/material.dart';

class ManageEventsMyEventsEventCommandCtrModel
    extends FlutterFlowModel<ManageEventsMyEventsEventCommandCtrWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UserInfosRow>? userinforow;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
