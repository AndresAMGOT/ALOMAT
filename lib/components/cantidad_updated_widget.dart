import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cantidad_updated_model.dart';
export 'cantidad_updated_model.dart';

class CantidadUpdatedWidget extends StatefulWidget {
  const CantidadUpdatedWidget({super.key});

  @override
  State<CantidadUpdatedWidget> createState() => _CantidadUpdatedWidgetState();
}

class _CantidadUpdatedWidgetState extends State<CantidadUpdatedWidget> {
  late CantidadUpdatedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CantidadUpdatedModel());

    _model.txtCantidadUpdatedTextController ??= TextEditingController();
    _model.txtCantidadUpdatedFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
      child: SizedBox(
        width: 370.0,
        child: TextFormField(
          controller: _model.txtCantidadUpdatedTextController,
          focusNode: _model.txtCantidadUpdatedFocusNode,
          autofocus: true,
          autofillHints: const [AutofillHints.email],
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Cantidad',
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  letterSpacing: 0.0,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE8E6D7),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xBC00040F),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            filled: true,
            fillColor: const Color(0xFFBF9E75),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
          minLines: 1,
          keyboardType: TextInputType.emailAddress,
          validator: _model.txtCantidadUpdatedTextControllerValidator
              .asValidator(context),
        ),
      ),
    );
  }
}
