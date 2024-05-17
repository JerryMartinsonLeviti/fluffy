import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/planner_flow/search_bar/new_event_name_component/new_event_name_component_widget.dart';
import 'select_or_create_new_event_component_widget.dart'
    show SelectOrCreateNewEventComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectOrCreateNewEventComponentModel
    extends FlutterFlowModel<SelectOrCreateNewEventComponentWidget> {
  ///  Local state fields for this component.

  EventsRow? selectedEventRow;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Alert Dialog - Custom Dialog] action in StartNewEventContainer widget.
  EventsRow? eventRowFromInsert;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<EventsRow>? selectedEventRows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
