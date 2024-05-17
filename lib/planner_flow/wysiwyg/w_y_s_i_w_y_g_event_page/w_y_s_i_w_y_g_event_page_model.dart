import '/flutter_flow/flutter_flow_util.dart';
import 'w_y_s_i_w_y_g_event_page_widget.dart' show WYSIWYGEventPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WYSIWYGEventPageModel extends FlutterFlowModel<WYSIWYGEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
