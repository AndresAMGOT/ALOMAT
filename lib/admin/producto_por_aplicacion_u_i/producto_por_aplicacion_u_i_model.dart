import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'producto_por_aplicacion_u_i_widget.dart'
    show ProductoPorAplicacionUIWidget;
import 'package:flutter/material.dart';

class ProductoPorAplicacionUIModel
    extends FlutterFlowModel<ProductoPorAplicacionUIWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode1;
  TextEditingController? txtEmailTextController1;
  String? Function(BuildContext, String?)? txtEmailTextController1Validator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for dpPaidMethod widget.
  String? dpPaidMethodValue;
  FormFieldController<String>? dpPaidMethodValueController;
  // State field(s) for txtTipoEvento widget.
  FocusNode? txtTipoEventoFocusNode;
  TextEditingController? txtTipoEventoTextController;
  String? Function(BuildContext, String?)? txtTipoEventoTextControllerValidator;
  // State field(s) for txtRecepcionosta widget.
  FocusNode? txtRecepcionostaFocusNode;
  TextEditingController? txtRecepcionostaTextController;
  String? Function(BuildContext, String?)?
      txtRecepcionostaTextControllerValidator;
  // State field(s) for txtFechaEvento widget.
  FocusNode? txtFechaEventoFocusNode;
  TextEditingController? txtFechaEventoTextController;
  String? Function(BuildContext, String?)?
      txtFechaEventoTextControllerValidator;
  // State field(s) for txtCantidadPersonas widget.
  FocusNode? txtCantidadPersonasFocusNode;
  TextEditingController? txtCantidadPersonasTextController;
  String? Function(BuildContext, String?)?
      txtCantidadPersonasTextControllerValidator;
  // State field(s) for txtDireccion widget.
  FocusNode? txtDireccionFocusNode;
  TextEditingController? txtDireccionTextController;
  String? Function(BuildContext, String?)? txtDireccionTextControllerValidator;
  // State field(s) for txtNombreSalon widget.
  FocusNode? txtNombreSalonFocusNode;
  TextEditingController? txtNombreSalonTextController;
  String? Function(BuildContext, String?)?
      txtNombreSalonTextControllerValidator;
  // State field(s) for txtTelefonoRecepcion widget.
  FocusNode? txtTelefonoRecepcionFocusNode;
  TextEditingController? txtTelefonoRecepcionTextController;
  String? Function(BuildContext, String?)?
      txtTelefonoRecepcionTextControllerValidator;
  // State field(s) for txtHoraIngreso widget.
  FocusNode? txtHoraIngresoFocusNode;
  TextEditingController? txtHoraIngresoTextController;
  String? Function(BuildContext, String?)?
      txtHoraIngresoTextControllerValidator;
  // State field(s) for dpDecoredBefore widget.
  String? dpDecoredBeforeValue;
  FormFieldController<String>? dpDecoredBeforeValueController;
  // State field(s) for txtTematica widget.
  FocusNode? txtTematicaFocusNode;
  TextEditingController? txtTematicaTextController;
  String? Function(BuildContext, String?)? txtTematicaTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode2;
  TextEditingController? txtEmailTextController2;
  String? Function(BuildContext, String?)? txtEmailTextController2Validator;
  // State field(s) for txtColores widget.
  FocusNode? txtColoresFocusNode;
  TextEditingController? txtColoresTextController;
  String? Function(BuildContext, String?)? txtColoresTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductoPorAplicacionRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtEmailFocusNode1?.dispose();
    txtEmailTextController1?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtTipoEventoFocusNode?.dispose();
    txtTipoEventoTextController?.dispose();

    txtRecepcionostaFocusNode?.dispose();
    txtRecepcionostaTextController?.dispose();

    txtFechaEventoFocusNode?.dispose();
    txtFechaEventoTextController?.dispose();

    txtCantidadPersonasFocusNode?.dispose();
    txtCantidadPersonasTextController?.dispose();

    txtDireccionFocusNode?.dispose();
    txtDireccionTextController?.dispose();

    txtNombreSalonFocusNode?.dispose();
    txtNombreSalonTextController?.dispose();

    txtTelefonoRecepcionFocusNode?.dispose();
    txtTelefonoRecepcionTextController?.dispose();

    txtHoraIngresoFocusNode?.dispose();
    txtHoraIngresoTextController?.dispose();

    txtTematicaFocusNode?.dispose();
    txtTematicaTextController?.dispose();

    txtEmailFocusNode2?.dispose();
    txtEmailTextController2?.dispose();

    txtColoresFocusNode?.dispose();
    txtColoresTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
