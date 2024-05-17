import '/flutter_flow/flutter_flow_util.dart';
import 'manage_events_my_events_widget.dart' show ManageEventsMyEventsWidget;
import 'package:flutter/material.dart';

class ManageEventsMyEventsModel
    extends FlutterFlowModel<ManageEventsMyEventsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
