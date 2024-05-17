import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_event_name_component_widget.dart' show NewEventNameComponentWidget;
import 'package:flutter/material.dart';

class NewEventNameComponentModel
    extends FlutterFlowModel<NewEventNameComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for NewEventNameTextField widget.
  FocusNode? newEventNameTextFieldFocusNode;
  TextEditingController? newEventNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      newEventNameTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  EventsRow? eventRowFromInsert;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  EventPlannerRow? eventPlannerRow;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newEventNameTextFieldFocusNode?.dispose();
    newEventNameTextFieldTextController?.dispose();
  }
}
