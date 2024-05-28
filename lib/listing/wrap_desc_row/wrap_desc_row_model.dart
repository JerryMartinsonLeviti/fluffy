import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wrap_desc_row_widget.dart' show WrapDescRowWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WrapDescRowModel extends FlutterFlowModel<WrapDescRowWidget> {
  ///  Local state fields for this component.

  bool noEdit = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DescLineTF widget.
  FocusNode? descLineTFFocusNode;
  TextEditingController? descLineTFTextController;
  String? Function(BuildContext, String?)? descLineTFTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descLineTFFocusNode?.dispose();
    descLineTFTextController?.dispose();
  }
}
