import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/message/events_message_selector/events_message_selector_widget.dart';
import '/message/message_box_component/message_box_component_widget.dart';
import 'messages_by_event_widget.dart' show MessagesByEventWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
