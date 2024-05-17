import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/room_role_scope_component/room_role_scope_component_widget.dart';
import 'chat_room_participants_widget.dart' show ChatRoomParticipantsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatRoomParticipantsModel
    extends FlutterFlowModel<ChatRoomParticipantsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RoomRoleScopeComponent component.
  late RoomRoleScopeComponentModel roomRoleScopeComponentModel1;
  // Model for RoomRoleScopeComponent component.
  late RoomRoleScopeComponentModel roomRoleScopeComponentModel2;
  // Model for RoomRoleScopeComponent component.
  late RoomRoleScopeComponentModel roomRoleScopeComponentModel3;

  @override
  void initState(BuildContext context) {
    roomRoleScopeComponentModel1 =
        createModel(context, () => RoomRoleScopeComponentModel());
    roomRoleScopeComponentModel2 =
        createModel(context, () => RoomRoleScopeComponentModel());
    roomRoleScopeComponentModel3 =
        createModel(context, () => RoomRoleScopeComponentModel());
  }

  @override
  void dispose() {
    roomRoleScopeComponentModel1.dispose();
    roomRoleScopeComponentModel2.dispose();
    roomRoleScopeComponentModel3.dispose();
  }
}
