import '/backend/supabase/supabase.dart';
import '/components/event_basic_details/event_basic_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'price_predictor_card_widget.dart' show PricePredictorCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PricePredictorCardModel
    extends FlutterFlowModel<PricePredictorCardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for EventBasicDetails component.
  late EventBasicDetailsModel eventBasicDetailsModel;

  @override
  void initState(BuildContext context) {
    eventBasicDetailsModel =
        createModel(context, () => EventBasicDetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventBasicDetailsModel.dispose();
  }
}
