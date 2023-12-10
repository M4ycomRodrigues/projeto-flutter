import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  bool hasAutor() => _autor != null;

  // "conteudo" field.
  String? _conteudo;
  String get conteudo => _conteudo ?? '';
  bool hasConteudo() => _conteudo != null;

  // "criacao" field.
  DateTime? _criacao;
  DateTime? get criacao => _criacao;
  bool hasCriacao() => _criacao != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "verificado" field.
  bool? _verificado;
  bool get verificado => _verificado ?? false;
  bool hasVerificado() => _verificado != null;

  // "reservado" field.
  bool? _reservado;
  bool get reservado => _reservado ?? false;
  bool hasReservado() => _reservado != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "uid_autor" field.
  String? _uidAutor;
  String get uidAutor => _uidAutor ?? '';
  bool hasUidAutor() => _uidAutor != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _autor = snapshotData['autor'] as String?;
    _conteudo = snapshotData['conteudo'] as String?;
    _criacao = snapshotData['criacao'] as DateTime?;
    _ativo = snapshotData['ativo'] as bool?;
    _verificado = snapshotData['verificado'] as bool?;
    _reservado = snapshotData['reservado'] as bool?;
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _uidAutor = snapshotData['uid_autor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? titulo,
  String? autor,
  String? conteudo,
  DateTime? criacao,
  bool? ativo,
  bool? verificado,
  bool? reservado,
  String? image1,
  String? image2,
  String? image3,
  String? uidAutor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'autor': autor,
      'conteudo': conteudo,
      'criacao': criacao,
      'ativo': ativo,
      'verificado': verificado,
      'reservado': reservado,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'uid_autor': uidAutor,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.autor == e2?.autor &&
        e1?.conteudo == e2?.conteudo &&
        e1?.criacao == e2?.criacao &&
        e1?.ativo == e2?.ativo &&
        e1?.verificado == e2?.verificado &&
        e1?.reservado == e2?.reservado &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.uidAutor == e2?.uidAutor;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.autor,
        e?.conteudo,
        e?.criacao,
        e?.ativo,
        e?.verificado,
        e?.reservado,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.uidAutor
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
