import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'super_user_record.g.dart';

abstract class SuperUserRecord
    implements Built<SuperUserRecord, SuperUserRecordBuilder> {
  static Serializer<SuperUserRecord> get serializer =>
      _$superUserRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SuperUserRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..photoUrl = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Super_User');

  static Stream<SuperUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SuperUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SuperUserRecord._();
  factory SuperUserRecord([void Function(SuperUserRecordBuilder) updates]) =
      _$SuperUserRecord;

  static SuperUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSuperUserRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? photoUrl,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    SuperUserRecord.serializer,
    SuperUserRecord(
      (s) => s
        ..email = email
        ..displayName = displayName
        ..uid = uid
        ..createdTime = createdTime
        ..photoUrl = photoUrl
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
