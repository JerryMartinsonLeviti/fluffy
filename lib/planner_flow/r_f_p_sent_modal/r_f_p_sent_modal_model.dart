import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/r_f_p_sent_modalx/r_f_p_sent_modalx_widget.dart';
import 'r_f_p_sent_modal_widget.dart' show RFPSentModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RFPSentModalModel extends FlutterFlowModel<RFPSentModalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RFP_SentModalx component.
  late RFPSentModalxModel rFPSentModalxModel;

  @override
  void initState(BuildContext context) {
    rFPSentModalxModel = createModel(context, () => RFPSentModalxModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rFPSentModalxModel.dispose();
  }
}
