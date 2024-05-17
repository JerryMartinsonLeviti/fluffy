import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_bar_guest_count_component_widget.dart'
    show SearchBarGuestCountComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarGuestCountComponentModel
    extends FlutterFlowModel<SearchBarGuestCountComponentWidget> {
  ///  Local state fields for this component.

  int? guestCount;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
