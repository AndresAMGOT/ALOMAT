import '/flutter_flow/flutter_flow_util.dart';
import 'add_count_request_product_widget.dart'
    show AddCountRequestProductWidget;
import 'package:flutter/material.dart';

class AddCountRequestProductModel
    extends FlutterFlowModel<AddCountRequestProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();
  }
}
