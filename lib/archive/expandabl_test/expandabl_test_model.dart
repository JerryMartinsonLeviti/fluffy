import '/archive/dropdown_expandable/dropdown_expandable_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'expandabl_test_widget.dart' show ExpandablTestWidget;
import 'package:flutter/material.dart';

class ExpandablTestModel extends FlutterFlowModel<ExpandablTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DropdownExpandable component.
  late DropdownExpandableModel dropdownExpandableModel;

  @override
  void initState(BuildContext context) {
    dropdownExpandableModel =
        createModel(context, () => DropdownExpandableModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dropdownExpandableModel.dispose();
  }
}
