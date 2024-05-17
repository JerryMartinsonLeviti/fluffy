import '/backend/supabase/supabase.dart';
import '/components/event_basics/event_basics_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_or_create_new_event_component_widget.dart'
    show SelectOrCreateNewEventComponentWidget;
import 'package:flutter/material.dart';

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
  // Model for EventBasics component.
  late EventBasicsModel eventBasicsModel;

  @override
  void initState(BuildContext context) {
    eventBasicsModel = createModel(context, () => EventBasicsModel());
  }

  @override
  void dispose() {
    eventBasicsModel.dispose();
  }
}
