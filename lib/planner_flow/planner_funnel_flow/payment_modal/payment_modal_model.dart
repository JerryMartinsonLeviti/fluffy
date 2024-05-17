import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_funnel_flow/payment_modal_component/payment_modal_component_widget.dart';
import 'payment_modal_widget.dart' show PaymentModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentModalModel extends FlutterFlowModel<PaymentModalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PaymentModalComponent component.
  late PaymentModalComponentModel paymentModalComponentModel;

  @override
  void initState(BuildContext context) {
    paymentModalComponentModel =
        createModel(context, () => PaymentModalComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    paymentModalComponentModel.dispose();
  }
}
