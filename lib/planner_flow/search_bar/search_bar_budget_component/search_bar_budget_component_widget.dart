import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_bar_budget_component_model.dart';
export 'search_bar_budget_component_model.dart';

class SearchBarBudgetComponentWidget extends StatefulWidget {
  const SearchBarBudgetComponentWidget({
    super.key,
    required this.eventRowIn,
    required this.onBudgetApplied,
  });

  final EventsRow? eventRowIn;
  final Future Function(int? newBudgetInCents)? onBudgetApplied;

  @override
  State<SearchBarBudgetComponentWidget> createState() =>
      _SearchBarBudgetComponentWidgetState();
}

class _SearchBarBudgetComponentWidgetState
    extends State<SearchBarBudgetComponentWidget> {
  late SearchBarBudgetComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchBarBudgetComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.budgetInCents = valueOrDefault<int>(
        widget.eventRowIn?.budgetInCents,
        0,
      );
      _model.eventUoM = widget.eventRowIn!.budgetIsPerEvent;
      setState(() {});
      await widget.onBudgetApplied?.call(
        _model.budgetInCents,
      );
    });

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      formatNumber(
        functions.centsIntToDollarDouble(valueOrDefault<int>(
          widget.eventRowIn?.budgetInCents,
          0,
        )),
        formatType: FormatType.decimal,
        decimalType: DecimalType.automatic,
        currency: '',
      ),
      '0',
    ));
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 380.0,
              maxHeight: 450.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Text(
                          'To help you always stay in budget, SilverSpike will show you pricing estimates that include all-in taxes & fees',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: 168.0,
                            height: 39.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 8.0, 0.0, 3.0),
                                  child: Text(
                                    '\$',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 8.0, 5.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.budgetInCents =
                                            functions.stringToCents(
                                                _model.textController.text);
                                        setState(() {});
                                      },
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Enter your budget',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        constraints: BoxConstraints(
                          maxWidth: 150.0,
                          maxHeight: 80.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['Per Event', 'Per Person'].toList(),
                              onChanged: (val) async {
                                setState(() {});
                                _model.eventUoM =
                                    functions.encodeBudgetStringtoBool(
                                        _model.radioButtonValue!);
                                setState(() {});
                              },
                              controller: _model.radioButtonValueController ??=
                                  FormFieldController<String>(
                                      valueOrDefault<String>(
                                functions.decodeUoMBoolIntoString(
                                    widget.eventRowIn!.budgetIsPerEvent),
                                'Per Event',
                              )),
                              optionHeight: 32.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 1.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).customColor2,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  await EventsTable().update(
                                    data: {
                                      'budgetInCents': _model.budgetInCents,
                                      'budgetIsPerEvent': _model.eventUoM,
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'PK_Events',
                                      widget.eventRowIn?.pKEvents,
                                    ),
                                  );
                                },
                                text: 'Apply ',
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).accent3,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  hoverBorderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]
                        .divide(SizedBox(height: 20.0))
                        .around(SizedBox(height: 20.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
