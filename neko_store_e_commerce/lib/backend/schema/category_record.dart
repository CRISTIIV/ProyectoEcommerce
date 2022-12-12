import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'category_record.g.dart';

abstract class CategoryRecord
    implements Built<CategoryRecord, CategoryRecordBuilder> {
  static Serializer<CategoryRecord> get serializer =>
      _$categoryRecordSerializer;

  @BuiltValueField(wireName: 'AC')
  bool? get ac;

  @BuiltValueField(wireName: 'Pool')
  bool? get pool;

  @BuiltValueField(wireName: 'Heater')
  bool? get heater;

  @BuiltValueField(wireName: 'PetFood')
  bool? get petFood;

  @BuiltValueField(wireName: 'LaundryAccesories')
  bool? get laundryAccesories;

  @BuiltValueField(wireName: 'CleaningAccesories')
  bool? get cleaningAccesories;

  @BuiltValueField(wireName: 'WorkoutEquipment')
  bool? get workoutEquipment;

  @BuiltValueField(wireName: 'Entertaiment')
  bool? get entertaiment;

  @BuiltValueField(wireName: 'DrinksAndCocktails')
  bool? get drinksAndCocktails;

  DocumentReference? get productsRef;

  @BuiltValueField(wireName: 'Electronics')
  bool? get electronics;

  @BuiltValueField(wireName: 'ElectricCars')
  bool? get electricCars;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoryRecordBuilder builder) => builder
    ..ac = false
    ..pool = false
    ..heater = false
    ..petFood = false
    ..laundryAccesories = false
    ..cleaningAccesories = false
    ..workoutEquipment = false
    ..entertaiment = false
    ..drinksAndCocktails = false
    ..electronics = false
    ..electricCars = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoryRecord._();
  factory CategoryRecord([void Function(CategoryRecordBuilder) updates]) =
      _$CategoryRecord;

  static CategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoryRecordData({
  bool? ac,
  bool? pool,
  bool? heater,
  bool? petFood,
  bool? laundryAccesories,
  bool? cleaningAccesories,
  bool? workoutEquipment,
  bool? entertaiment,
  bool? drinksAndCocktails,
  DocumentReference? productsRef,
  bool? electronics,
  bool? electricCars,
}) {
  final firestoreData = serializers.toFirestore(
    CategoryRecord.serializer,
    CategoryRecord(
      (c) => c
        ..ac = ac
        ..pool = pool
        ..heater = heater
        ..petFood = petFood
        ..laundryAccesories = laundryAccesories
        ..cleaningAccesories = cleaningAccesories
        ..workoutEquipment = workoutEquipment
        ..entertaiment = entertaiment
        ..drinksAndCocktails = drinksAndCocktails
        ..productsRef = productsRef
        ..electronics = electronics
        ..electricCars = electricCars,
    ),
  );

  return firestoreData;
}
