import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/message_user_chip/message_user_chip_widget.dart';
import 'package:flutter/material.dart';
import 'room_role_scope_component_model.dart';
export 'room_role_scope_component_model.dart';

class RoomRoleScopeComponentWidget extends StatefulWidget {
  const RoomRoleScopeComponentWidget({
    super.key,
    required this.role,
    required this.roomUsers,
  });

  final String? role;
  final List<FinalCombinedViewRow>? roomUsers;

  @override
  State<RoomRoleScopeComponentWidget> createState() =>
      _RoomRoleScopeComponentWidgetState();
}

class _RoomRoleScopeComponentWidgetState
    extends State<RoomRoleScopeComponentWidget> {
  late RoomRoleScopeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomRoleScopeComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: 180.0,
          maxHeight: 120.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          width: 180.0,
          height: 150.0,
          child: Stack(
            alignment: const AlignmentDirectional(1.0, -1.0),
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.role,
                      'noRole',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Icon(
                    Icons.person_add_alt_1_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 200.0,
                      maxHeight: 180.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final roomUserIndex = widget.roomUsers!.toList();
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(roomUserIndex.length,
                                (roomUserIndexIndex) {
                              final roomUserIndexItem =
                                  roomUserIndex[roomUserIndexIndex];
                              return MessageUserChipWidget(
                                key: Key(
                                    'Key7vl_${roomUserIndexIndex}_of_${roomUserIndex.length}'),
                                userImageURL: valueOrDefault<String>(
                                  roomUserIndexItem.photourl,
                                  '?',
                                ),
                                userFirstName: valueOrDefault<String>(
                                  roomUserIndexItem.firstname,
                                  'noName',
                                ),
                                userSecondName: valueOrDefault<String>(
                                  roomUserIndexItem.lastname,
                                  'noLName',
                                ),
                                userTitle: valueOrDefault<String>(
                                  roomUserIndexItem.title,
                                  'NoTitle',
                                ),
                                userOrg: valueOrDefault<String>(
                                  roomUserIndexItem.orgName,
                                  'noOrg',
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
