import '/archive/archived_r_f_p_sent_modal/archived_r_f_p_sent_modal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'archived_r_f_p_sent_page_widget.dart' show ArchivedRFPSentPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ArchivedRFPSentPageModel
    extends FlutterFlowModel<ArchivedRFPSentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Archived-RFP_SentModal component.
  late ArchivedRFPSentModalModel archivedRFPSentModalModel;

  @override
  void initState(BuildContext context) {
    archivedRFPSentModalModel =
        createModel(context, () => ArchivedRFPSentModalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    archivedRFPSentModalModel.dispose();
  }
}
