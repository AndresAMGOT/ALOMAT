import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'chose_product_widget.dart' show ChoseProductWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChoseProductModel extends FlutterFlowModel<ChoseProductWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for btnCount widget.
  int? btnCountValue;
  // Stores action output result for [Custom Action - getSubTotalPorItem] action in btnCount widget.
  double? resultadoFuntion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
