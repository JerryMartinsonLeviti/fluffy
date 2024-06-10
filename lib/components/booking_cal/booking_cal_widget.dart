import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_cal_model.dart';
export 'booking_cal_model.dart';

class BookingCalWidget extends StatefulWidget {
  const BookingCalWidget({
    super.key,
    required this.onSave,
    required this.venueRow,
  });

  final Future Function()? onSave;
  final VenuesRow? venueRow;

  @override
  State<BookingCalWidget> createState() => _BookingCalWidgetState();
}

class _BookingCalWidgetState extends State<BookingCalWidget> {
  late BookingCalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingCalModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.bc = await BookingCalendarsTable().queryRows(
        queryFn: (q) => q.eq(
          'venue_id',
          widget.venueRow?.pKVenues,
        ),
      );
      if ((_model.bc != null && (_model.bc)!.isNotEmpty) != true) {
        await BookingCalendarsTable().insert({
          'venue_id': widget.venueRow?.pKVenues,
        });
        setState(() => _model.requestCompleter2 = null);
        await _model.waitForRequestCompleted2();
      }
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
    return Container(
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(-1.0, -1.0),
        child: Wrap(
          spacing: 5.0,
          runSpacing: 5.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 280.0,
              ),
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  FutureBuilder<List<BookingCalendarsRow>>(
                    future: (_model.requestCompleter2 ??=
                            Completer<List<BookingCalendarsRow>>()
                              ..complete(BookingCalendarsTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'venue_id',
                                  widget.venueRow?.pKVenues,
                                ),
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
                      List<BookingCalendarsRow>
                          bookingCalendarDBBookingCalendarsRowList =
                          snapshot.data!;
                      return Container(
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Booking Calendar',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 26.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await BookingRulesTable().insert({
                                        'booking_rule_name': '-',
                                        'booking_calendar_id':
                                            bookingCalendarDBBookingCalendarsRowList
                                                .first.id,
                                      });
                                      setState(() =>
                                          _model.requestCompleter2 = null);
                                      await _model.waitForRequestCompleted2();

                                      FFAppState().update(() {});
                                    },
                                    child: Icon(
                                      Icons.add_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Booking Rules',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              if ((bookingCalendarDBBookingCalendarsRowList
                                      .isNotEmpty) ==
                                  true)
                                FutureBuilder<List<BookingRulesRow>>(
                                  future: BookingRulesTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'booking_calendar_id',
                                      bookingCalendarDBBookingCalendarsRowList
                                          .first.id,
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
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<BookingRulesRow>
                                        bookingRulesDBBookingRulesRowList =
                                        snapshot.data!;
                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Builder(
                                            builder: (context) {
                                              final bookingRule =
                                                  bookingRulesDBBookingRulesRowList
                                                      .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: List.generate(
                                                    bookingRule.length,
                                                    (bookingRuleIndex) {
                                                  final bookingRuleItem =
                                                      bookingRule[
                                                          bookingRuleIndex];
                                                  return Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await BookingRulesTable()
                                                                    .insert({
                                                                  'booking_rule_name':
                                                                      '-',
                                                                  'booking_calendar_id':
                                                                      bookingCalendarDBBookingCalendarsRowList
                                                                          .first
                                                                          .id,
                                                                });

                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .settings_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                bookingRuleItem
                                                                    .bookingRuleName,
                                                                '-',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                        FutureBuilder<
                                                            List<
                                                                BookingRangesRow>>(
                                                          future: (_model
                                                                      .requestCompleter1 ??=
                                                                  Completer<
                                                                      List<
                                                                          BookingRangesRow>>()
                                                                    ..complete(
                                                                        BookingRangesTable()
                                                                            .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eq(
                                                                        'booking_rules_id',
                                                                        bookingRuleItem
                                                                            .id,
                                                                      ),
                                                                    )))
                                                              .future,
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitChasingDots(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<BookingRangesRow>
                                                                bookingRangesDBBookingRangesRowList =
                                                                snapshot.data!;
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await BookingRulesTable()
                                                                              .insert({
                                                                            'booking_rule_name':
                                                                                '-',
                                                                            'booking_calendar_id':
                                                                                bookingCalendarDBBookingCalendarsRowList.first.id,
                                                                          });

                                                                          FFAppState()
                                                                              .update(() {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .add_box,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'AddDayOfWeek',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await BookingRulesTable()
                                                                              .insert({
                                                                            'booking_rule_name':
                                                                                '-',
                                                                            'booking_calendar_id':
                                                                                bookingCalendarDBBookingCalendarsRowList.first.id,
                                                                          });

                                                                          FFAppState()
                                                                              .update(() {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .add_box,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'AddCalendarRange',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final bookingRangeRow =
                                                                          bookingRangesDBBookingRangesRowList
                                                                              .toList();
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            bookingRangeRow.length,
                                                                            (bookingRangeRowIndex) {
                                                                          final bookingRangeRowItem =
                                                                              bookingRangeRow[bookingRangeRowIndex];
                                                                          return Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Container(
                                                                                        width: 150.0,
                                                                                        height: 40.0,
                                                                                        child: custom_widgets.DateRangePicker(
                                                                                          width: 150.0,
                                                                                          height: 40.0,
                                                                                          startDate: bookingRangeRowItem.startDate,
                                                                                          endDate: bookingRangeRowItem.endDate,
                                                                                          applyAction: (start, end) async {
                                                                                            await BookingRangesTable().update(
                                                                                              data: {
                                                                                                'start_date': supaSerialize<DateTime>(start),
                                                                                                'end_date': supaSerialize<DateTime>(end),
                                                                                              },
                                                                                              matchingRows: (rows) => rows.eq(
                                                                                                'id',
                                                                                                bookingRangeRowItem.id,
                                                                                              ),
                                                                                            );
                                                                                            setState(() => _model.requestCompleter1 = null);
                                                                                            await _model.waitForRequestCompleted1();

                                                                                            FFAppState().update(() {});
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons.calendar_today_outlined,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons.av_timer,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons.timer_sharp,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons.delete_forever_sharp,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              FutureBuilder<List<DaysOfWeekRow>>(
                                                                                future: DaysOfWeekTable().queryRows(
                                                                                  queryFn: (q) => q.order('id', ascending: true),
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
                                                                                  List<DaysOfWeekRow> dowDBDaysOfWeekRowList = snapshot.data!;
                                                                                  return Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
                                                                                    child: FutureBuilder<List<BookingRangeDowRow>>(
                                                                                      future: (_model.requestCompleter3 ??= Completer<List<BookingRangeDowRow>>()
                                                                                            ..complete(BookingRangeDowTable().queryRows(
                                                                                              queryFn: (q) => q.eq(
                                                                                                'booking_range_id',
                                                                                                bookingRangeRowItem.id,
                                                                                              ),
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
                                                                                        List<BookingRangeDowRow> dowbrDBBookingRangeDowRowList = snapshot.data!;
                                                                                        return Container(
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Builder(
                                                                                                builder: (context) {
                                                                                                  final dowRow = dowDBDaysOfWeekRowList.toList();
                                                                                                  return Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: List.generate(dowRow.length, (dowRowIndex) {
                                                                                                      final dowRowItem = dowRow[dowRowIndex];
                                                                                                      return Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          FutureBuilder<List<BookingRangeDowRow>>(
                                                                                                            future: BookingRangeDowTable().querySingleRow(
                                                                                                              queryFn: (q) => q
                                                                                                                  .eq(
                                                                                                                    'booking_range_id',
                                                                                                                    bookingRangeRowItem.id,
                                                                                                                  )
                                                                                                                  .eq(
                                                                                                                    'day_of_week_id',
                                                                                                                    dowRowItem.id,
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
                                                                                                              List<BookingRangeDowRow> containerBookingRangeDowRowList = snapshot.data!;
                                                                                                              final containerBookingRangeDowRow = containerBookingRangeDowRowList.isNotEmpty ? containerBookingRangeDowRowList.first : null;
                                                                                                              return Container(
                                                                                                                decoration: BoxDecoration(),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    if (valueOrDefault<bool>(
                                                                                                                      containerBookingRangeDowRow?.id == null,
                                                                                                                      false,
                                                                                                                    ))
                                                                                                                      InkWell(
                                                                                                                        splashColor: Colors.transparent,
                                                                                                                        focusColor: Colors.transparent,
                                                                                                                        hoverColor: Colors.transparent,
                                                                                                                        highlightColor: Colors.transparent,
                                                                                                                        onTap: () async {
                                                                                                                          await BookingRangeDowTable().insert({
                                                                                                                            'id': dowRowItem.id,
                                                                                                                            'booking_range_id': bookingRangeRowItem.id,
                                                                                                                          });
                                                                                                                          setState(() => _model.requestCompleter3 = null);
                                                                                                                          await _model.waitForRequestCompleted3();

                                                                                                                          FFAppState().update(() {});
                                                                                                                        },
                                                                                                                        child: Container(
                                                                                                                          width: 40.0,
                                                                                                                          height: 40.0,
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                            border: Border.all(
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              dowRowItem.dayAbrev,
                                                                                                                              'SUN',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    if (valueOrDefault<bool>(
                                                                                                                      containerBookingRangeDowRow?.id != null,
                                                                                                                      false,
                                                                                                                    ))
                                                                                                                      InkWell(
                                                                                                                        splashColor: Colors.transparent,
                                                                                                                        focusColor: Colors.transparent,
                                                                                                                        hoverColor: Colors.transparent,
                                                                                                                        highlightColor: Colors.transparent,
                                                                                                                        onTap: () async {
                                                                                                                          await BookingRangeDowTable().delete(
                                                                                                                            matchingRows: (rows) => rows
                                                                                                                                .eq(
                                                                                                                                  'booking_range_id',
                                                                                                                                  bookingRangeRowItem.id,
                                                                                                                                )
                                                                                                                                .eq(
                                                                                                                                  'day_of_week_id',
                                                                                                                                  dowRowItem.id,
                                                                                                                                ),
                                                                                                                          );
                                                                                                                          setState(() => _model.requestCompleter3 = null);
                                                                                                                          await _model.waitForRequestCompleted3();

                                                                                                                          FFAppState().update(() {});
                                                                                                                        },
                                                                                                                        child: Container(
                                                                                                                          width: 40.0,
                                                                                                                          height: 40.0,
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            border: Border.all(
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              dowRowItem.dayAbrev,
                                                                                                                              'SUN',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          ),
                                                                                                        ],
                                                                                                      );
                                                                                                    }),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ],
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.settings_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Booking Entries',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              if (_model.dontEdit == false)
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            _model.dontEdit = !_model.dontEdit;
                                            setState(() {});
                                          },
                                          text: 'Exit',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.dontEdit = !_model.dontEdit;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.calendar_month,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
