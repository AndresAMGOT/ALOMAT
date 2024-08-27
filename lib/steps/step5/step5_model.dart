import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'step5_widget.dart' show Step5Widget;
import 'package:flutter/material.dart';

class Step5Model extends FlutterFlowModel<Step5Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
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
  // State field(s) for txtNombreSalon widget.
  FocusNode? txtNombreSalonFocusNode;
  TextEditingController? txtNombreSalonTextController;
  String? Function(BuildContext, String?)?
      txtNombreSalonTextControllerValidator;
  // State field(s) for txtRecepcionista widget.
  FocusNode? txtRecepcionistaFocusNode;
  TextEditingController? txtRecepcionistaTextController;
  String? Function(BuildContext, String?)?
      txtRecepcionistaTextControllerValidator;
  // State field(s) for txtTelRecepcionista widget.
  FocusNode? txtTelRecepcionistaFocusNode;
  TextEditingController? txtTelRecepcionistaTextController;
  String? Function(BuildContext, String?)?
      txtTelRecepcionistaTextControllerValidator;
  // State field(s) for txtHoraIngreso widget.
  FocusNode? txtHoraIngresoFocusNode;
  TextEditingController? txtHoraIngresoTextController;
  String? Function(BuildContext, String?)?
      txtHoraIngresoTextControllerValidator;
  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaTextController;
  String? Function(BuildContext, String?)? txtFechaTextControllerValidator;
  // State field(s) for txtComment widget.
  FocusNode? txtCommentFocusNode;
  TextEditingController? txtCommentTextController;
  String? Function(BuildContext, String?)? txtCommentTextControllerValidator;
  // State field(s) for txtTematica widget.
  FocusNode? txtTematicaFocusNode;
  TextEditingController? txtTematicaTextController;
  String? Function(BuildContext, String?)? txtTematicaTextControllerValidator;
  // State field(s) for txtColores widget.
  FocusNode? txtColoresFocusNode;
  TextEditingController? txtColoresTextController;
  String? Function(BuildContext, String?)? txtColoresTextControllerValidator;
  // State field(s) for txtCommentGeneral widget.
  FocusNode? txtCommentGeneralFocusNode;
  TextEditingController? txtCommentGeneralTextController;
  String? Function(BuildContext, String?)?
      txtCommentGeneralTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtTipoEventoFocusNode?.dispose();
    txtTipoEventoTextController?.dispose();

    txtNombreSalonFocusNode?.dispose();
    txtNombreSalonTextController?.dispose();

    txtRecepcionistaFocusNode?.dispose();
    txtRecepcionistaTextController?.dispose();

    txtTelRecepcionistaFocusNode?.dispose();
    txtTelRecepcionistaTextController?.dispose();

    txtHoraIngresoFocusNode?.dispose();
    txtHoraIngresoTextController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaTextController?.dispose();

    txtCommentFocusNode?.dispose();
    txtCommentTextController?.dispose();

    txtTematicaFocusNode?.dispose();
    txtTematicaTextController?.dispose();

    txtColoresFocusNode?.dispose();
    txtColoresTextController?.dispose();

    txtCommentGeneralFocusNode?.dispose();
    txtCommentGeneralTextController?.dispose();
  }
}
