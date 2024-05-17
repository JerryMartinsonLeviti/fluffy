import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_expandable_widget.dart' show DropdownExpandableWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DropdownExpandableModel
    extends FlutterFlowModel<DropdownExpandableWidget> {
  ///  Local state fields for this component.

  String? initialText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
