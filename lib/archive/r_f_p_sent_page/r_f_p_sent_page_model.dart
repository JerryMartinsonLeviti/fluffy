import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/r_f_p_sent_modal/r_f_p_sent_modal_widget.dart';
import 'r_f_p_sent_page_widget.dart' show RFPSentPageWidget;
import 'package:flutter/material.dart';

class RFPSentPageModel extends FlutterFlowModel<RFPSentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RFP_SentModal component.
  late RFPSentModalModel rFPSentModalModel;

  @override
  void initState(BuildContext context) {
    rFPSentModalModel = createModel(context, () => RFPSentModalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rFPSentModalModel.dispose();
  }
}
