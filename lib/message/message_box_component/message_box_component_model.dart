import '/flutter_flow/flutter_flow_util.dart';
import '/message/chat_room_participants/chat_room_participants_widget.dart';
import '/message/message_by_date_listview/message_by_date_listview_widget.dart';
import '/message/message_by_room_listview/message_by_room_listview_widget.dart';
import 'message_box_component_widget.dart' show MessageBoxComponentWidget;
import 'package:flutter/material.dart';

class MessageBoxComponentModel
    extends FlutterFlowModel<MessageBoxComponentWidget> {
  ///  Local state fields for this component.

  int? myRoomPk;

  ///  State fields for stateful widgets in this component.

  // Model for chatRoomParticipants component.
  late ChatRoomParticipantsModel chatRoomParticipantsModel;
  // Model for MessageByRoomListview component.
  late MessageByRoomListviewModel messageByRoomListviewModel;
  // Model for MessageByDateListview component.
  late MessageByDateListviewModel messageByDateListviewModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    chatRoomParticipantsModel =
        createModel(context, () => ChatRoomParticipantsModel());
    messageByRoomListviewModel =
        createModel(context, () => MessageByRoomListviewModel());
    messageByDateListviewModel =
        createModel(context, () => MessageByDateListviewModel());
  }

  @override
  void dispose() {
    chatRoomParticipantsModel.dispose();
    messageByRoomListviewModel.dispose();
    messageByDateListviewModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
