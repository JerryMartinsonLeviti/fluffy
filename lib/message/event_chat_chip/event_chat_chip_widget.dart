import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_chat_chip_model.dart';
export 'event_chat_chip_model.dart';

class EventChatChipWidget extends StatefulWidget {
  const EventChatChipWidget({
    super.key,
    required this.bitTableEventRow,
  });

  final BigTableRow? bitTableEventRow;

  @override
  State<EventChatChipWidget> createState() => _EventChatChipWidgetState();
}

class _EventChatChipWidgetState extends State<EventChatChipWidget> {
  late EventChatChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventChatChipModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventsRow>>(
      future: EventsTable().queryRows(
        queryFn: (q) => q.eq(
          'PK_Events',
          widget.bitTableEventRow?.pKEvents,
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
        List<EventsRow> containerEventsRowList = snapshot.data!;
        return Container(
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/913/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    containerEventsRowList.first.eventName,
                    'noEventName',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
