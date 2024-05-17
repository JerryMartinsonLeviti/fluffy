import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/message_component/message_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'message_by_room_listview_model.dart';
export 'message_by_room_listview_model.dart';

class MessageByRoomListviewWidget extends StatefulWidget {
  const MessageByRoomListviewWidget({
    super.key,
    required this.roomPK,
  });

  final int? roomPK;

  @override
  State<MessageByRoomListviewWidget> createState() =>
      _MessageByRoomListviewWidgetState();
}

class _MessageByRoomListviewWidgetState
    extends State<MessageByRoomListviewWidget> {
  late MessageByRoomListviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageByRoomListviewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          await actions.unsubscribe(
            'Messages',
          );
          await Future.delayed(const Duration(milliseconds: 1000));
          await actions.subscribe(
            'Messages',
            () async {
              setState(() => _model.requestCompleter = null);
              await _model.waitForRequestCompleted();
              FFAppState().update(() {});
            },
          );
          await actions.unsubscribe(
            'posts',
          );
          await Future.delayed(const Duration(milliseconds: 1000));
        }),
        Future(() async {
          setState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
          FFAppState().update(() {});
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: Container(
        decoration: BoxDecoration(),
        child: Container(
          decoration: BoxDecoration(),
          child: FutureBuilder<List<RmuViewRow>>(
            future: (_model.requestCompleter ??= Completer<List<RmuViewRow>>()
                  ..complete(RmuViewTable().queryRows(
                    queryFn: (q) => q
                        .eq(
                          'PK_Rooms',
                          widget.roomPK,
                        )
                        .order('created_at'),
                  )))
                .future,
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
              List<RmuViewRow> byRoomListViewRmuViewRowList = snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                reverse: true,
                scrollDirection: Axis.vertical,
                itemCount: byRoomListViewRmuViewRowList.length,
                itemBuilder: (context, byRoomListViewIndex) {
                  final byRoomListViewRmuViewRow =
                      byRoomListViewRmuViewRowList[byRoomListViewIndex];
                  return Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        MessageComponentWidget(
                          key: Key(
                              'Key51o_${byRoomListViewIndex}_of_${byRoomListViewRmuViewRowList.length}'),
                          rmuRow: byRoomListViewRmuViewRow,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.roomPK?.toString(),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            byRoomListViewRmuViewRow.pKRooms?.toString(),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
