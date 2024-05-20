import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'event_space_card_component_widget.dart'
    show EventSpaceCardComponentWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventSpaceCardComponentModel
    extends FlutterFlowModel<EventSpaceCardComponentWidget> {
  ///  Local state fields for this component.

  bool noEdit = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for FSName widget.
  FocusNode? fSNameFocusNode;
  TextEditingController? fSNameTextController;
  String? Function(BuildContext, String?)? fSNameTextControllerValidator;
  // State field(s) for FSDesc widget.
  FocusNode? fSDescFocusNode;
  TextEditingController? fSDescTextController;
  String? Function(BuildContext, String?)? fSDescTextControllerValidator;
  // State field(s) for Seat widget.
  FocusNode? seatFocusNode;
  TextEditingController? seatTextController;
  String? Function(BuildContext, String?)? seatTextControllerValidator;
  // State field(s) for Stand widget.
  FocusNode? standFocusNode;
  TextEditingController? standTextController;
  String? Function(BuildContext, String?)? standTextControllerValidator;
  // State field(s) for Conf widget.
  FocusNode? confFocusNode;
  TextEditingController? confTextController;
  String? Function(BuildContext, String?)? confTextControllerValidator;
  // State field(s) for SqFt widget.
  FocusNode? sqFtFocusNode;
  TextEditingController? sqFtTextController;
  String? Function(BuildContext, String?)? sqFtTextControllerValidator;
  // State field(s) for rental widget.
  bool? rentalValue;
  // State field(s) for RentalFee widget.
  FocusNode? rentalFeeFocusNode;
  TextEditingController? rentalFeeTextController;
  String? Function(BuildContext, String?)? rentalFeeTextControllerValidator;
  // State field(s) for fnb widget.
  bool? fnbValue;
  // State field(s) for fnb widget.
  FocusNode? fnbFocusNode;
  TextEditingController? fnbTextController;
  String? Function(BuildContext, String?)? fnbTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fSNameFocusNode?.dispose();
    fSNameTextController?.dispose();

    fSDescFocusNode?.dispose();
    fSDescTextController?.dispose();

    seatFocusNode?.dispose();
    seatTextController?.dispose();

    standFocusNode?.dispose();
    standTextController?.dispose();

    confFocusNode?.dispose();
    confTextController?.dispose();

    sqFtFocusNode?.dispose();
    sqFtTextController?.dispose();

    rentalFeeFocusNode?.dispose();
    rentalFeeTextController?.dispose();

    fnbFocusNode?.dispose();
    fnbTextController?.dispose();
  }
}
