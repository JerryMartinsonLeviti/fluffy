import '/components/vision_board_product_card/vision_board_product_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/event_price_card/price_predictor/price_predictor_widget.dart';
import 'vision_board_widget.dart' show VisionBoardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisionBoardModel extends FlutterFlowModel<VisionBoardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for VisionBoardProductCard component.
  late VisionBoardProductCardModel visionBoardProductCardModel1;
  // Model for VisionBoardProductCard component.
  late VisionBoardProductCardModel visionBoardProductCardModel2;
  // Model for VisionBoardProductCard component.
  late VisionBoardProductCardModel visionBoardProductCardModel3;
  // Model for PricePredictor component.
  late PricePredictorModel pricePredictorModel;

  @override
  void initState(BuildContext context) {
    visionBoardProductCardModel1 =
        createModel(context, () => VisionBoardProductCardModel());
    visionBoardProductCardModel2 =
        createModel(context, () => VisionBoardProductCardModel());
    visionBoardProductCardModel3 =
        createModel(context, () => VisionBoardProductCardModel());
    pricePredictorModel = createModel(context, () => PricePredictorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    visionBoardProductCardModel1.dispose();
    visionBoardProductCardModel2.dispose();
    visionBoardProductCardModel3.dispose();
    pricePredictorModel.dispose();
  }
}
