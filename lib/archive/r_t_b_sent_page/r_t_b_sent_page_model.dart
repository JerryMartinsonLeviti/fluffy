import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/r_t_b_sent_modal/r_t_b_sent_modal_widget.dart';
import 'r_t_b_sent_page_widget.dart' show RTBSentPageWidget;
import 'package:flutter/material.dart';

class RTBSentPageModel extends FlutterFlowModel<RTBSentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RTB_SentModal component.
  late RTBSentModalModel rTBSentModalModel;

  @override
  void initState(BuildContext context) {
    rTBSentModalModel = createModel(context, () => RTBSentModalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rTBSentModalModel.dispose();
  }
}
