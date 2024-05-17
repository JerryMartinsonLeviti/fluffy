import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/r_t_b_sent_modal/r_t_b_sent_modal_widget.dart';
import 'r_t_b_sent_page_widget.dart' show RTBSentPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
