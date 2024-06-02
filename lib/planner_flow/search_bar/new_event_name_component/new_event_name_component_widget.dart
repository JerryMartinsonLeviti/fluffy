import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_event_name_component_model.dart';
export 'new_event_name_component_model.dart';

class NewEventNameComponentWidget extends StatefulWidget {
  const NewEventNameComponentWidget({super.key});

  @override
  State<NewEventNameComponentWidget> createState() =>
      _NewEventNameComponentWidgetState();
}

class _NewEventNameComponentWidgetState
    extends State<NewEventNameComponentWidget> {
  late NewEventNameComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewEventNameComponentModel());

    _model.newEventNameTextFieldTextController ??= TextEditingController();
    _model.newEventNameTextFieldFocusNode ??= FocusNode();

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
      width: 380.0,
      height: 250.0,
      constraints: BoxConstraints(
        maxWidth: 380.0,
        maxHeight: 250.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: FlutterFlowTheme.of(context).primaryText,
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Name Your New Event',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 340.0,
              maxHeight: 80.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(14.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.newEventNameTextFieldTextController,
                focusNode: _model.newEventNameTextFieldFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Label here...',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                validator: _model.newEventNameTextFieldTextControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              _model.eventRowFromInsert = await EventsTable().insert({
                'event_name': _model.newEventNameTextFieldTextController.text,
              });
              _model.eventPlannerRow = await EventPlannerTable().insert({
                'FK_Planner': FFAppState().PKPlanner,
                'FK_Event': _model.eventRowFromInsert?.pKEvents,
              });
              await EventLiaisonTable().insert({
                'FK_Event': _model.eventRowFromInsert?.pKEvents,
                'FK_Liaison': FFAppState().PKLiaison,
              });
              FFAppState().PKActiveEvent = _model.eventRowFromInsert!.pKEvents;
              setState(() {});
              Navigator.pop(context, _model.eventRowFromInsert);

              setState(() {});
            },
            text: 'Create',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).customColor1,
              textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              elevation: 3.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
        ].divide(SizedBox(height: 20.0)).around(SizedBox(height: 20.0)),
      ),
    );
  }
}
