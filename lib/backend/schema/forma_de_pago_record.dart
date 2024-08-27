import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormaDePagoRecord extends FirestoreRecord {
  FormaDePagoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcin" field.
  String? _descripcin;
  String get descripcin => _descripcin ?? '';
  bool hasDescripcin() => _descripcin != null;

  // "FechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _descripcin = snapshotData['Descripcin'] as String?;
    _fechaCreacion = snapshotData['FechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FormaDePago');

  static Stream<FormaDePagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormaDePagoRecord.fromSnapshot(s));

  static Future<FormaDePagoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormaDePagoRecord.fromSnapshot(s));

  static FormaDePagoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormaDePagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormaDePagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormaDePagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormaDePagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormaDePagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormaDePagoRecordData({
  String? nombre,
  String? descripcin,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Descripcin': descripcin,
      'FechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormaDePagoRecordDocumentEquality implements Equality<FormaDePagoRecord> {
  const FormaDePagoRecordDocumentEquality();

  @override
  bool equals(FormaDePagoRecord? e1, FormaDePagoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcin == e2?.descripcin &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(FormaDePagoRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcin, e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is FormaDePagoRecord;
}
