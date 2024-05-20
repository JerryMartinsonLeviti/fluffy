import '/backend/supabase/supabase.dart';
import '/components/event_summary_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manage_events_my_events_copy_model.dart';
export 'manage_events_my_events_copy_model.dart';

class ManageEventsMyEventsCopyWidget extends StatefulWidget {
  const ManageEventsMyEventsCopyWidget({super.key});

  @override
  State<ManageEventsMyEventsCopyWidget> createState() =>
      _ManageEventsMyEventsCopyWidgetState();
}

class _ManageEventsMyEventsCopyWidgetState
    extends State<ManageEventsMyEventsCopyWidget> {
  late ManageEventsMyEventsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageEventsMyEventsCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Planner... My Events',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                    child: Text(
                      'My Events ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 35.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder<List<EventsRow>>(
                      future: EventsTable().queryRows(
                        queryFn: (q) => q,
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
                          child: Builder(
                            builder: (context) {
                              final eventRowIndex =
                                  containerEventsRowList.toList();
                              return Wrap(
                                spacing: 10.0,
                                runSpacing: 10.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: List.generate(eventRowIndex.length,
                                    (eventRowIndexIndex) {
                                  final eventRowIndexItem =
                                      eventRowIndex[eventRowIndexIndex];
                                  return EventSummaryCardWidget(
                                    key: Key(
                                        'Keyuzg_${eventRowIndexIndex}_of_${eventRowIndex.length}'),
                                    eventRow: eventRowIndexItem,
                                  );
                                }),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
