import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/planner_flow/search_bar/new_event_name_component/new_event_name_component_widget.dart';
import 'search_bar_widget.dart' show SearchBarWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

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
