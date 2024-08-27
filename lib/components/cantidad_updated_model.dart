import '/flutter_flow/flutter_flow_util.dart';
import 'cantidad_updated_widget.dart' show CantidadUpdatedWidget;
import 'package:flutter/material.dart';

class CantidadUpdatedModel extends FlutterFlowModel<CantidadUpdatedWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCantidadUpdated widget.
  FocusNode? txtCantidadUpdatedFocusNode;
  TextEditingController? txtCantidadUpdatedTextController;
  String? Function(BuildContext, String?)?
      txtCantidadUpdatedTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCantidadUpdatedFocusNode?.dispose();
    txtCantidadUpdatedTextController?.dispose();
  }
}
