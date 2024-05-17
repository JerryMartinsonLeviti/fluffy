import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dev_p_k_selection_widget.dart' show DevPKSelectionWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DevPKSelectionModel extends FlutterFlowModel<DevPKSelectionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PlannerDropDown widget.
  int? plannerDropDownValue;
  FormFieldController<int>? plannerDropDownValueController;
  // State field(s) for VendorDropDown widget.
  int? vendorDropDownValue;
  FormFieldController<int>? vendorDropDownValueController;
  // State field(s) for LiaisonDropDown widget.
  int? liaisonDropDownValue;
  FormFieldController<int>? liaisonDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
