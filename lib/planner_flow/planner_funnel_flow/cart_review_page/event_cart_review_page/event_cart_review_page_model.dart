import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/cart_option_review_card/cart_option_review_card_widget.dart';
import '/planner_flow/planner_funnel_flow/cart_review_page/favorite_card/favorite_card_widget.dart';
import 'dart:async';
import 'event_cart_review_page_widget.dart' show EventCartReviewPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventCartReviewPageModel
    extends FlutterFlowModel<EventCartReviewPageWidget> {
  ///  Local state fields for this page.

  int? eventPK;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;
  Completer<List<CartsRow>>? requestCompleter;
  // Model for FavoriteCard component.
  late FavoriteCardModel favoriteCardModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
    favoriteCardModel = createModel(context, () => FavoriteCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
    favoriteCardModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
