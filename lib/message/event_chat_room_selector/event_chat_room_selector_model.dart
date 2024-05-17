import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/message/event_chat_chip/event_chat_chip_widget.dart';
import 'event_chat_room_selector_widget.dart' show EventChatRoomSelectorWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventChatRoomSelectorModel
    extends FlutterFlowModel<EventChatRoomSelectorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for EventChatChip component.
  late EventChatChipModel eventChatChipModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    eventChatChipModel = createModel(context, () => EventChatChipModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    eventChatChipModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
