import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResturantImagesAlBahahRecord extends FirestoreRecord {
  ResturantImagesAlBahahRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Resturantname" field.
  String? _resturantname;
  String get resturantname => _resturantname ?? '';
  bool hasResturantname() => _resturantname != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _resturantname = snapshotData['Resturantname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ResturantImagesAlBahah');

  static Stream<ResturantImagesAlBahahRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ResturantImagesAlBahahRecord.fromSnapshot(s));

  static Future<ResturantImagesAlBahahRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ResturantImagesAlBahahRecord.fromSnapshot(s));

  static ResturantImagesAlBahahRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResturantImagesAlBahahRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturantImagesAlBahahRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturantImagesAlBahahRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturantImagesAlBahahRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturantImagesAlBahahRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturantImagesAlBahahRecordData({
  String? image,
  String? resturantname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'Resturantname': resturantname,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResturantImagesAlBahahRecordDocumentEquality
    implements Equality<ResturantImagesAlBahahRecord> {
  const ResturantImagesAlBahahRecordDocumentEquality();

  @override
  bool equals(
      ResturantImagesAlBahahRecord? e1, ResturantImagesAlBahahRecord? e2) {
    return e1?.image == e2?.image && e1?.resturantname == e2?.resturantname;
  }

  @override
  int hash(ResturantImagesAlBahahRecord? e) =>
      const ListEquality().hash([e?.image, e?.resturantname]);

  @override
  bool isValidKey(Object? o) => o is ResturantImagesAlBahahRecord;
}
