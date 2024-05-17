import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'events_message_selector_widget.dart' show EventsMessageSelectorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventsMessageSelectorModel
    extends FlutterFlowModel<EventsMessageSelectorWidget> {
  ///  Local state fields for this component.

  List<int> uniquePKEvents = [];
  void addToUniquePKEvents(int item) => uniquePKEvents.add(item);
  void removeFromUniquePKEvents(int item) => uniquePKEvents.remove(item);
  void removeAtIndexFromUniquePKEvents(int index) =>
      uniquePKEvents.removeAt(index);
  void insertAtIndexInUniquePKEvents(int index, int item) =>
      uniquePKEvents.insert(index, item);
  void updateUniquePKEventsAtIndex(int index, Function(int) updateFn) =>
      uniquePKEvents[index] = updateFn(uniquePKEvents[index]);

  int selectedRoomPK = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
