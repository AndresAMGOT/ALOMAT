import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudEventoPorAplicanteRecord extends FirestoreRecord {
  SolicitudEventoPorAplicanteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DireccionEvento" field.
  String? _direccionEvento;
  String get direccionEvento => _direccionEvento ?? '';
  bool hasDireccionEvento() => _direccionEvento != null;

  // "NombreSalon" field.
  String? _nombreSalon;
  String get nombreSalon => _nombreSalon ?? '';
  bool hasNombreSalon() => _nombreSalon != null;

  // "HoraEntrada" field.
  String? _horaEntrada;
  String get horaEntrada => _horaEntrada ?? '';
  bool hasHoraEntrada() => _horaEntrada != null;

  // "DocaracionAnterioridad" field.
  bool? _docaracionAnterioridad;
  bool get docaracionAnterioridad => _docaracionAnterioridad ?? false;
  bool hasDocaracionAnterioridad() => _docaracionAnterioridad != null;

  // "NumeroTelefono" field.
  String? _numeroTelefono;
  String get numeroTelefono => _numeroTelefono ?? '';
  bool hasNumeroTelefono() => _numeroTelefono != null;

  // "Recepcionista" field.
  String? _recepcionista;
  String get recepcionista => _recepcionista ?? '';
  bool hasRecepcionista() => _recepcionista != null;

  // "FormaDePago" field.
  String? _formaDePago;
  String get formaDePago => _formaDePago ?? '';
  bool hasFormaDePago() => _formaDePago != null;

  // "TipoDeEvento" field.
  String? _tipoDeEvento;
  String get tipoDeEvento => _tipoDeEvento ?? '';
  bool hasTipoDeEvento() => _tipoDeEvento != null;

  // "Tematica" field.
  String? _tematica;
  String get tematica => _tematica ?? '';
  bool hasTematica() => _tematica != null;

  // "ColoresDePreferencia" field.
  String? _coloresDePreferencia;
  String get coloresDePreferencia => _coloresDePreferencia ?? '';
  bool hasColoresDePreferencia() => _coloresDePreferencia != null;

  // "ComentarioAdicional" field.
  String? _comentarioAdicional;
  String get comentarioAdicional => _comentarioAdicional ?? '';
  bool hasComentarioAdicional() => _comentarioAdicional != null;

  // "ImagenesRecomendacion" field.
  List<String>? _imagenesRecomendacion;
  List<String> get imagenesRecomendacion => _imagenesRecomendacion ?? const [];
  bool hasImagenesRecomendacion() => _imagenesRecomendacion != null;

  // "FechaEvento" field.
  String? _fechaEvento;
  String get fechaEvento => _fechaEvento ?? '';
  bool hasFechaEvento() => _fechaEvento != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "EstaCompletado" field.
  bool? _estaCompletado;
  bool get estaCompletado => _estaCompletado ?? false;
  bool hasEstaCompletado() => _estaCompletado != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "Productos" field.
  List<DocumentReference>? _productos;
  List<DocumentReference> get productos => _productos ?? const [];
  bool hasProductos() => _productos != null;

  // "FechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "IsActived" field.
  bool? _isActived;
  bool get isActived => _isActived ?? false;
  bool hasIsActived() => _isActived != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "EmailUser" field.
  String? _emailUser;
  String get emailUser => _emailUser ?? '';
  bool hasEmailUser() => _emailUser != null;

  // "TelefonoUser" field.
  String? _telefonoUser;
  String get telefonoUser => _telefonoUser ?? '';
  bool hasTelefonoUser() => _telefonoUser != null;

  void _initializeFields() {
    _direccionEvento = snapshotData['DireccionEvento'] as String?;
    _nombreSalon = snapshotData['NombreSalon'] as String?;
    _horaEntrada = snapshotData['HoraEntrada'] as String?;
    _docaracionAnterioridad = snapshotData['DocaracionAnterioridad'] as bool?;
    _numeroTelefono = snapshotData['NumeroTelefono'] as String?;
    _recepcionista = snapshotData['Recepcionista'] as String?;
    _formaDePago = snapshotData['FormaDePago'] as String?;
    _tipoDeEvento = snapshotData['TipoDeEvento'] as String?;
    _tematica = snapshotData['Tematica'] as String?;
    _coloresDePreferencia = snapshotData['ColoresDePreferencia'] as String?;
    _comentarioAdicional = snapshotData['ComentarioAdicional'] as String?;
    _imagenesRecomendacion = getDataList(snapshotData['ImagenesRecomendacion']);
    _fechaEvento = snapshotData['FechaEvento'] as String?;
    _uid = snapshotData['uid'] as String?;
    _estaCompletado = snapshotData['EstaCompletado'] as bool?;
    _usuario = snapshotData['Usuario'] as DocumentReference?;
    _productos = getDataList(snapshotData['Productos']);
    _fechaCreacion = snapshotData['FechaCreacion'] as DateTime?;
    _isActived = snapshotData['IsActived'] as bool?;
    _nombre = snapshotData['Nombre'] as String?;
    _emailUser = snapshotData['EmailUser'] as String?;
    _telefonoUser = snapshotData['TelefonoUser'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SolicitudEventoPorAplicante');

  static Stream<SolicitudEventoPorAplicanteRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => SolicitudEventoPorAplicanteRecord.fromSnapshot(s));

  static Future<SolicitudEventoPorAplicanteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SolicitudEventoPorAplicanteRecord.fromSnapshot(s));

  static SolicitudEventoPorAplicanteRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      SolicitudEventoPorAplicanteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudEventoPorAplicanteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudEventoPorAplicanteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudEventoPorAplicanteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudEventoPorAplicanteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudEventoPorAplicanteRecordData({
  String? direccionEvento,
  String? nombreSalon,
  String? horaEntrada,
  bool? docaracionAnterioridad,
  String? numeroTelefono,
  String? recepcionista,
  String? formaDePago,
  String? tipoDeEvento,
  String? tematica,
  String? coloresDePreferencia,
  String? comentarioAdicional,
  String? fechaEvento,
  String? uid,
  bool? estaCompletado,
  DocumentReference? usuario,
  DateTime? fechaCreacion,
  bool? isActived,
  String? nombre,
  String? emailUser,
  String? telefonoUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DireccionEvento': direccionEvento,
      'NombreSalon': nombreSalon,
      'HoraEntrada': horaEntrada,
      'DocaracionAnterioridad': docaracionAnterioridad,
      'NumeroTelefono': numeroTelefono,
      'Recepcionista': recepcionista,
      'FormaDePago': formaDePago,
      'TipoDeEvento': tipoDeEvento,
      'Tematica': tematica,
      'ColoresDePreferencia': coloresDePreferencia,
      'ComentarioAdicional': comentarioAdicional,
      'FechaEvento': fechaEvento,
      'uid': uid,
      'EstaCompletado': estaCompletado,
      'Usuario': usuario,
      'FechaCreacion': fechaCreacion,
      'IsActived': isActived,
      'Nombre': nombre,
      'EmailUser': emailUser,
      'TelefonoUser': telefonoUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudEventoPorAplicanteRecordDocumentEquality
    implements Equality<SolicitudEventoPorAplicanteRecord> {
  const SolicitudEventoPorAplicanteRecordDocumentEquality();

  @override
  bool equals(SolicitudEventoPorAplicanteRecord? e1,
      SolicitudEventoPorAplicanteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.direccionEvento == e2?.direccionEvento &&
        e1?.nombreSalon == e2?.nombreSalon &&
        e1?.horaEntrada == e2?.horaEntrada &&
        e1?.docaracionAnterioridad == e2?.docaracionAnterioridad &&
        e1?.numeroTelefono == e2?.numeroTelefono &&
        e1?.recepcionista == e2?.recepcionista &&
        e1?.formaDePago == e2?.formaDePago &&
        e1?.tipoDeEvento == e2?.tipoDeEvento &&
        e1?.tematica == e2?.tematica &&
        e1?.coloresDePreferencia == e2?.coloresDePreferencia &&
        e1?.comentarioAdicional == e2?.comentarioAdicional &&
        listEquality.equals(
            e1?.imagenesRecomendacion, e2?.imagenesRecomendacion) &&
        e1?.fechaEvento == e2?.fechaEvento &&
        e1?.uid == e2?.uid &&
        e1?.estaCompletado == e2?.estaCompletado &&
        e1?.usuario == e2?.usuario &&
        listEquality.equals(e1?.productos, e2?.productos) &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.isActived == e2?.isActived &&
        e1?.nombre == e2?.nombre &&
        e1?.emailUser == e2?.emailUser &&
        e1?.telefonoUser == e2?.telefonoUser;
  }

  @override
  int hash(SolicitudEventoPorAplicanteRecord? e) => const ListEquality().hash([
        e?.direccionEvento,
        e?.nombreSalon,
        e?.horaEntrada,
        e?.docaracionAnterioridad,
        e?.numeroTelefono,
        e?.recepcionista,
        e?.formaDePago,
        e?.tipoDeEvento,
        e?.tematica,
        e?.coloresDePreferencia,
        e?.comentarioAdicional,
        e?.imagenesRecomendacion,
        e?.fechaEvento,
        e?.uid,
        e?.estaCompletado,
        e?.usuario,
        e?.productos,
        e?.fechaCreacion,
        e?.isActived,
        e?.nombre,
        e?.emailUser,
        e?.telefonoUser
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudEventoPorAplicanteRecord;
}
