import '/components/event_basic_details/event_basic_details_widget.dart';
import '/components/security_warning/security_warning_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'requestto_book_cart_widget.dart' show RequesttoBookCartWidget;
import 'package:flutter/material.dart';

class RequesttoBookCartModel extends FlutterFlowModel<RequesttoBookCartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SecurityWarning component.
  late SecurityWarningModel securityWarningModel;
  // Model for EventBasicDetails component.
  late EventBasicDetailsModel eventBasicDetailsModel;

  @override
  void initState(BuildContext context) {
    securityWarningModel = createModel(context, () => SecurityWarningModel());
    eventBasicDetailsModel =
        createModel(context, () => EventBasicDetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    securityWarningModel.dispose();
    eventBasicDetailsModel.dispose();
  }
}
