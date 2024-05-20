import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'address_widget.dart' show AddressWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressModel extends FlutterFlowModel<AddressWidget> {
  ///  Local state fields for this component.

  bool dontEdit = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Street1TF widget.
  FocusNode? street1TFFocusNode;
  TextEditingController? street1TFTextController;
  String? Function(BuildContext, String?)? street1TFTextControllerValidator;
  // State field(s) for Street2TF widget.
  FocusNode? street2TFFocusNode;
  TextEditingController? street2TFTextController;
  String? Function(BuildContext, String?)? street2TFTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for ZIP widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipTextController;
  String? Function(BuildContext, String?)? zipTextControllerValidator;
  // State field(s) for Country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    street1TFFocusNode?.dispose();
    street1TFTextController?.dispose();

    street2TFFocusNode?.dispose();
    street2TFTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    zipFocusNode?.dispose();
    zipTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();
  }
}
