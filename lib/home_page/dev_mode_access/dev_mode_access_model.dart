import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dev_mode_access_widget.dart' show DevModeAccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DevModeAccessModel extends FlutterFlowModel<DevModeAccessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for AccessCodeTextField widget.
  FocusNode? accessCodeTextFieldFocusNode;
  TextEditingController? accessCodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      accessCodeTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    accessCodeTextFieldFocusNode?.dispose();
    accessCodeTextFieldTextController?.dispose();
  }
}
