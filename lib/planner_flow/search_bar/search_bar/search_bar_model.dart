import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/planner_flow/search_bar/new_event_name_component/new_event_name_component_widget.dart';
import '/planner_flow/search_bar/search_bar_budget_component/search_bar_budget_component_widget.dart';
import '/planner_flow/search_bar/search_bar_category_component/search_bar_category_component_widget.dart';
import '/planner_flow/search_bar/search_bar_date_component/search_bar_date_component_widget.dart';
import '/planner_flow/search_bar/search_bar_guest_count_component/search_bar_guest_count_component_widget.dart';
import '/planner_flow/search_bar/search_bar_location_component/search_bar_location_component_widget.dart';
import '/planner_flow/search_bar/search_bar_time_component/search_bar_time_component_widget.dart';
import 'search_bar_widget.dart' show SearchBarWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarModel extends FlutterFlowModel<SearchBarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<EventsRow>? selectedEventRows;
  // Model for NewEventNameComponent component.
  late NewEventNameComponentModel newEventNameComponentModel;

  @override
  void initState(BuildContext context) {
    newEventNameComponentModel =
        createModel(context, () => NewEventNameComponentModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    newEventNameComponentModel.dispose();
  }
}
