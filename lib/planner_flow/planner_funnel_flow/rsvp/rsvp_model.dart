import '/flutter_flow/flutter_flow_util.dart';
import 'rsvp_widget.dart' show RsvpWidget;
import 'package:flutter/material.dart';

class RsvpModel extends FlutterFlowModel<RsvpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
