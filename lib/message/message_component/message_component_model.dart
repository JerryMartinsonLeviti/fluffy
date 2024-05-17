import '/flutter_flow/flutter_flow_util.dart';
import '/message/message_user_chip/message_user_chip_widget.dart';
import 'message_component_widget.dart' show MessageComponentWidget;
import 'package:flutter/material.dart';

class MessageComponentModel extends FlutterFlowModel<MessageComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MessageUserChip component.
  late MessageUserChipModel messageUserChipModel;

  @override
  void initState(BuildContext context) {
    messageUserChipModel = createModel(context, () => MessageUserChipModel());
  }

  @override
  void dispose() {
    messageUserChipModel.dispose();
  }
}
