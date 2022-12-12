import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'properties_record.g.dart';

abstract class PropertiesRecord
    implements Built<PropertiesRecord, PropertiesRecordBuilder> {
  static Serializer<PropertiesRecord> get serializer =>
      _$propertiesRecordSerializer;

  String? get mainImage;

  bool? get isDraft;

  DocumentReference? get userRef;

  double? get ratingSummary;

  int? get price;

  double? get taxRate;

  String? get notes;

  DateTime? get lastUpdated;

  bool? get isLive;

  @BuiltValueField(wireName: 'Stock')
  double? get stock;

  String? get productName;

  String? get productDescription;

  LatLng? get productLocation;

  String? get productAdress;

  String? get productRegion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PropertiesRecordBuilder builder) => builder
    ..mainImage = ''
    ..isDraft = false
    ..ratingSummary = 0.0
    ..price = 0
    ..taxRate = 0.0
    ..notes = ''
    ..isLive = false
    ..stock = 0.0
    ..productName = ''
    ..productDescription = ''
    ..productAdress = ''
    ..productRegion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PropertiesRecord._();
  factory PropertiesRecord([void Function(PropertiesRecordBuilder) updates]) =
      _$PropertiesRecord;

  static PropertiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPropertiesRecordData({
  String? mainImage,
  bool? isDraft,
  DocumentReference? userRef,
  double? ratingSummary,
  int? price,
  double? taxRate,
  String? notes,
  DateTime? lastUpdated,
  bool? isLive,
  double? stock,
  String? productName,
  String? productDescription,
  LatLng? productLocation,
  String? productAdress,
  String? productRegion,
}) {
  final firestoreData = serializers.toFirestore(
    PropertiesRecord.serializer,
    PropertiesRecord(
      (p) => p
        ..mainImage = mainImage
        ..isDraft = isDraft
        ..userRef = userRef
        ..ratingSummary = ratingSummary
        ..price = price
        ..taxRate = taxRate
        ..notes = notes
        ..lastUpdated = lastUpdated
        ..isLive = isLive
        ..stock = stock
        ..productName = productName
        ..productDescription = productDescription
        ..productLocation = productLocation
        ..productAdress = productAdress
        ..productRegion = productRegion,
    ),
  );

  return firestoreData;
}
