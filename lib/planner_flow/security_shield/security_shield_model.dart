import '/components/security_warning/security_warning_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'security_shield_widget.dart' show SecurityShieldWidget;
import 'package:flutter/material.dart';

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
