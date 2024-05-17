// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

/// Subscribe to a specified table in Supabase to receive real-time updates.
///
/// [table] : The name of the table to monitor in the Supabase dB
/// [callbackAction] : A callback funciton to execute when a chnage occurs in the table

Future<void> subscribe(
  String table,
  Future Function() callbackAction,
) async {
  // Accessing

  SupaFlow.client
      .channel('public:$table')
      // setting up an event listener on the channel

      .on(
        RealtimeListenTypes.postgresChanges,
        ChannelFilter(event: "*", schema: 'public', table: table),
        (payload, [ref]) => callbackAction(),
      )
      .subscribe();
}
