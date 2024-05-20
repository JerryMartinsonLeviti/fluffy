import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wrap_faq_row_widget.dart' show WrapFaqRowWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WrapFaqRowModel extends FlutterFlowModel<WrapFaqRowWidget> {
  ///  Local state fields for this component.

  bool noEdit = true;

  bool collapsed = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Q_TF widget.
  FocusNode? qTfFocusNode;
  TextEditingController? qTfTextController;
  String? Function(BuildContext, String?)? qTfTextControllerValidator;
  // State field(s) for A_TF widget.
  FocusNode? aTfFocusNode;
  TextEditingController? aTfTextController;
  String? Function(BuildContext, String?)? aTfTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    qTfFocusNode?.dispose();
    qTfTextController?.dispose();

    aTfFocusNode?.dispose();
    aTfTextController?.dispose();
  }
}
