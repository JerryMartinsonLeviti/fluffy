import '/components/security_warning/security_warning_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'security_shield_widget.dart' show SecurityShieldWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SecurityShieldModel extends FlutterFlowModel<SecurityShieldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SecurityWarning component.
  late SecurityWarningModel securityWarningModel;

  @override
  void initState(BuildContext context) {
    securityWarningModel = createModel(context, () => SecurityWarningModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    securityWarningModel.dispose();
  }
}
