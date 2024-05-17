import '/components/event_basic_details/event_basic_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'booking_confirmed_step1_email_widget.dart'
    show BookingConfirmedStep1EmailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingConfirmedStep1EmailModel
    extends FlutterFlowModel<BookingConfirmedStep1EmailWidget> {
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
