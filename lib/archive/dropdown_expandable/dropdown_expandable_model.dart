import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_expandable_widget.dart' show DropdownExpandableWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
