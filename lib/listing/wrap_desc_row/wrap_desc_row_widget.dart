import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wrap_desc_row_model.dart';
export 'wrap_desc_row_model.dart';

class WrapDescRowWidget extends StatefulWidget {
  const WrapDescRowWidget({
    super.key,
    required this.description,
    bool? hide,
    required this.onUpdateDesc,
    required this.onDelete,
    required this.onHideToggle,
  }) : this.hide = hide ?? true;

  final String? description;
  final bool hide;
  final Future Function(String description)? onUpdateDesc;
  final Future Function()? onDelete;
  final Future Function()? onHideToggle;

  @override
  State<WrapDescRowWidget> createState() => _WrapDescRowWidgetState();
}

class _WrapDescRowWidgetState extends State<WrapDescRowWidget> {
  late WrapDescRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WrapDescRowModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await widget.onHideToggle?.call();
    });

    _model.descLineTFTextController ??=
        TextEditingController(text: widget.description);
    _model.descLineTFFocusNode ??= FocusNode();

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
      child: Wrap(
        spacing: 0.0,
        runSpacing: 0.0,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.start,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              if (!widget.hide)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 0.0,
                      runSpacing: 0.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '- ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 350.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget.description,
                                      '?',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  if (FFAppState().DevModeEnabled)
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.noEdit = !_model.noEdit;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.settings_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          if (!_model.noEdit)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.hide)
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.onHideToggle?.call();
                        },
                        child: Icon(
                          Icons.visibility_off,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    if (!widget.hide)
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.onHideToggle?.call();
                        },
                        child: Icon(
                          Icons.visibility_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    Text(
                      'Hide',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await widget.onDelete?.call();
                      },
                      child: Icon(
                        Icons.delete_forever_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Text(
                      'Delete',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
                Text(
                  'Edit Below',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.descLineTFTextController,
                    focusNode: _model.descLineTFFocusNode,
                    onFieldSubmitted: (_) async {
                      await widget.onUpdateDesc?.call(
                        _model.descLineTFTextController.text,
                      );
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Description or What\'s Included',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
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
                    validator: _model.descLineTFTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
