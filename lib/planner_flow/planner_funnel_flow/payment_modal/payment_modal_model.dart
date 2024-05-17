import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_funnel_flow/payment_modal_component/payment_modal_component_widget.dart';
import 'payment_modal_widget.dart' show PaymentModalWidget;
import 'package:flutter/material.dart';

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
