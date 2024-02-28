import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaderBoardReceiversRecord extends FirestoreRecord {
  LeaderBoardReceiversRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userimage" field.
  String? _userimage;
  String get userimage => _userimage ?? '';
  bool hasUserimage() => _userimage != null;

  // "userpoint" field.
  int? _userpoint;
  int get userpoint => _userpoint ?? 0;
  bool hasUserpoint() => _userpoint != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _userimage = snapshotData['userimage'] as String?;
    _userpoint = castToType<int>(snapshotData['userpoint']);
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LeaderBoardReceivers');

  static Stream<LeaderBoardReceiversRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => LeaderBoardReceiversRecord.fromSnapshot(s));

  static Future<LeaderBoardReceiversRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LeaderBoardReceiversRecord.fromSnapshot(s));

  static LeaderBoardReceiversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeaderBoardReceiversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeaderBoardReceiversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeaderBoardReceiversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeaderBoardReceiversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeaderBoardReceiversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeaderBoardReceiversRecordData({
  String? username,
  String? userimage,
  int? userpoint,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'userimage': userimage,
      'userpoint': userpoint,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeaderBoardReceiversRecordDocumentEquality
    implements Equality<LeaderBoardReceiversRecord> {
  const LeaderBoardReceiversRecordDocumentEquality();

  @override
  bool equals(LeaderBoardReceiversRecord? e1, LeaderBoardReceiversRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.userimage == e2?.userimage &&
        e1?.userpoint == e2?.userpoint &&
        e1?.email == e2?.email;
  }

  @override
  int hash(LeaderBoardReceiversRecord? e) => const ListEquality()
      .hash([e?.username, e?.userimage, e?.userpoint, e?.email]);

  @override
  bool isValidKey(Object? o) => o is LeaderBoardReceiversRecord;
}
