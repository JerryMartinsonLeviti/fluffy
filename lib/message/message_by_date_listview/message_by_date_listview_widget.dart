import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message/message_component/message_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'message_by_date_listview_model.dart';
export 'message_by_date_listview_model.dart';

class MessageByDateListviewWidget extends StatefulWidget {
  const MessageByDateListviewWidget({
    super.key,
    required this.roomPK,
    required this.onSelectedRoom,
  });

  final int? roomPK;
  final Future Function(int? selectedRoomPK)? onSelectedRoom;

  @override
  State<MessageByDateListviewWidget> createState() =>
      _MessageByDateListviewWidgetState();
}

class _MessageByDateListviewWidgetState
    extends State<MessageByDateListviewWidget> {
  late MessageByDateListviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageByDateListviewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
      await actions.subscribe(
        'posts',
        () async {
          setState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
          FFAppState().update(() {});
        },
      );
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
      decoration: const BoxDecoration(),
      child: Container(
        decoration: const BoxDecoration(),
        child: Container(
          decoration: const BoxDecoration(),
          child: FutureBuilder<List<RmuViewRow>>(
            future: (_model.requestCompleter ??= Completer<List<RmuViewRow>>()
                  ..complete(RmuViewTable().queryRows(
                    queryFn: (q) => q.order('created_at'),
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
              List<RmuViewRow> byDateListViewRmuViewRowList = snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                reverse: true,
                scrollDirection: Axis.vertical,
                itemCount: byDateListViewRmuViewRowList.length,
                itemBuilder: (context, byDateListViewIndex) {
                  final byDateListViewRmuViewRow =
                      byDateListViewRmuViewRowList[byDateListViewIndex];
                  return Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await widget.onSelectedRoom?.call(
                              byDateListViewRmuViewRow.pKRooms,
                            );
                          },
                          child: MessageComponentWidget(
                            key: Key(
                                'Keyaol_${byDateListViewIndex}_of_${byDateListViewRmuViewRowList.length}'),
                            rmuRow: byDateListViewRmuViewRow,
                          ),
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
                            byDateListViewRmuViewRow.pKRooms?.toString(),
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
