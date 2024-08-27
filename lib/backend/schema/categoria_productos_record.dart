import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaProductosRecord extends FirestoreRecord {
  CategoriaProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "FechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _fechaCreacion = snapshotData['FechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaProductos');

  static Stream<CategoriaProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaProductosRecord.fromSnapshot(s));

  static Future<CategoriaProductosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CategoriaProductosRecord.fromSnapshot(s));

  static CategoriaProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriaProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaProductosRecordData({
  String? nombre,
  String? descripcion,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Descripcion': descripcion,
      'FechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriaProductosRecordDocumentEquality
    implements Equality<CategoriaProductosRecord> {
  const CategoriaProductosRecordDocumentEquality();

  @override
  bool equals(CategoriaProductosRecord? e1, CategoriaProductosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(CategoriaProductosRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion, e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is CategoriaProductosRecord;
}
