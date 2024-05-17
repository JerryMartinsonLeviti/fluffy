import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/events_message_selector/events_message_selector_widget.dart';
import '/message/message_box_component/message_box_component_widget.dart';
import 'messages_by_event_widget.dart' show MessagesByEventWidget;
import 'package:flutter/material.dart';

class MessagesByEventModel extends FlutterFlowModel<MessagesByEventWidget> {
  ///  Local state fields for this page.

  BigTableRow? selectedBigTableRoomRow;

  bool triggerDbRefresh = true;

  bool showByRoom = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in MessagesByEvent widget.
  List<BigTableRow>? userRoomsBigTable;
  // Model for EventsMessageSelector component.
  late EventsMessageSelectorModel eventsMessageSelectorModel;
  // Model for MessageBoxComponent component.
  late MessageBoxComponentModel messageBoxComponentModel;

  @override
  void initState(BuildContext context) {
    eventsMessageSelectorModel =
        createModel(context, () => EventsMessageSelectorModel());
    messageBoxComponentModel =
        createModel(context, () => MessageBoxComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventsMessageSelectorModel.dispose();
    messageBoxComponentModel.dispose();
  }
}
