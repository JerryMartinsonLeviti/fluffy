import '/backend/supabase/supabase.dart';
import '/components/event_basic_details/event_basic_details_widget.dart';
import '/components/security_warning/security_warning_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_funnel_flow/payment_modal_component/payment_modal_component_widget.dart';
import 'r_f_p_submission_widget.dart' show RFPSubmissionWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class RFPSubmissionModel extends FlutterFlowModel<RFPSubmissionWidget> {
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
