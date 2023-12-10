import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservasRecord extends FirestoreRecord {
  ReservasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idPost" field.
  String? _idPost;
  String get idPost => _idPost ?? '';
  bool hasIdPost() => _idPost != null;

  // "uid_autor" field.
  String? _uidAutor;
  String get uidAutor => _uidAutor ?? '';
  bool hasUidAutor() => _uidAutor != null;

  // "uid_solicitante" field.
  String? _uidSolicitante;
  String get uidSolicitante => _uidSolicitante ?? '';
  bool hasUidSolicitante() => _uidSolicitante != null;

  // "dataLimite" field.
  DateTime? _dataLimite;
  DateTime? get dataLimite => _dataLimite;
  bool hasDataLimite() => _dataLimite != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _idPost = snapshotData['idPost'] as String?;
    _uidAutor = snapshotData['uid_autor'] as String?;
    _uidSolicitante = snapshotData['uid_solicitante'] as String?;
    _dataLimite = snapshotData['dataLimite'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reservas')
          : FirebaseFirestore.instance.collectionGroup('reservas');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('reservas').doc();

  static Stream<ReservasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservasRecord.fromSnapshot(s));

  static Future<ReservasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservasRecord.fromSnapshot(s));

  static ReservasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservasRecordData({
  String? idPost,
  String? uidAutor,
  String? uidSolicitante,
  DateTime? dataLimite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idPost': idPost,
      'uid_autor': uidAutor,
      'uid_solicitante': uidSolicitante,
      'dataLimite': dataLimite,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservasRecordDocumentEquality implements Equality<ReservasRecord> {
  const ReservasRecordDocumentEquality();

  @override
  bool equals(ReservasRecord? e1, ReservasRecord? e2) {
    return e1?.idPost == e2?.idPost &&
        e1?.uidAutor == e2?.uidAutor &&
        e1?.uidSolicitante == e2?.uidSolicitante &&
        e1?.dataLimite == e2?.dataLimite;
  }

  @override
  int hash(ReservasRecord? e) => const ListEquality()
      .hash([e?.idPost, e?.uidAutor, e?.uidSolicitante, e?.dataLimite]);

  @override
  bool isValidKey(Object? o) => o is ReservasRecord;
}
