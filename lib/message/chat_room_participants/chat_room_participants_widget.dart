import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/room_role_scope_component/room_role_scope_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_room_participants_model.dart';
export 'chat_room_participants_model.dart';

class ChatRoomParticipantsWidget extends StatefulWidget {
  const ChatRoomParticipantsWidget({
    super.key,
    required this.roomPK,
  });

  final int? roomPK;

  @override
  State<ChatRoomParticipantsWidget> createState() =>
      _ChatRoomParticipantsWidgetState();
}

class _ChatRoomParticipantsWidgetState
    extends State<ChatRoomParticipantsWidget> {
  late ChatRoomParticipantsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatRoomParticipantsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(),
        child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            FutureBuilder<List<FinalCombinedViewRow>>(
              future: FinalCombinedViewTable().queryRows(
                queryFn: (q) => q
                    .not(
                      'PK_Planners',
                      'is',
                      null,
                    )
                    .eq(
                      'room',
                      widget.roomPK,
                    ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitChasingDots(
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<FinalCombinedViewRow>
                    plannerContainerFinalCombinedViewRowList = snapshot.data!;
                return Container(
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.roomRoleScopeComponentModel1,
                    updateCallback: () => setState(() {}),
                    child: RoomRoleScopeComponentWidget(
                      role: 'Planner',
                      roomUsers: plannerContainerFinalCombinedViewRowList,
                    ),
                  ),
                );
              },
            ),
            FutureBuilder<List<FinalCombinedViewRow>>(
              future: FinalCombinedViewTable().queryRows(
                queryFn: (q) => q
                    .not(
                      'PK_Liaisons',
                      'is',
                      null,
                    )
                    .eq(
                      'room',
                      widget.roomPK,
                    ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitChasingDots(
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<FinalCombinedViewRow>
                    liaisonContainerFinalCombinedViewRowList = snapshot.data!;
                return Container(
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.roomRoleScopeComponentModel2,
                    updateCallback: () => setState(() {}),
                    child: RoomRoleScopeComponentWidget(
                      role: 'Liaison',
                      roomUsers: liaisonContainerFinalCombinedViewRowList,
                    ),
                  ),
                );
              },
            ),
            FutureBuilder<List<FinalCombinedViewRow>>(
              future: FinalCombinedViewTable().queryRows(
                queryFn: (q) => q
                    .not(
                      'PK_Vendors',
                      'is',
                      null,
                    )
                    .eq(
                      'room',
                      widget.roomPK,
                    ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitChasingDots(
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<FinalCombinedViewRow>
                    vendorContainerFinalCombinedViewRowList = snapshot.data!;
                return Container(
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.roomRoleScopeComponentModel3,
                    updateCallback: () => setState(() {}),
                    child: RoomRoleScopeComponentWidget(
                      role: 'Vendor',
                      roomUsers: vendorContainerFinalCombinedViewRowList,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
