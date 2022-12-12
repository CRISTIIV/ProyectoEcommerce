// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryRecord> _$categoryRecordSerializer =
    new _$CategoryRecordSerializer();

class _$CategoryRecordSerializer
    implements StructuredSerializer<CategoryRecord> {
  @override
  final Iterable<Type> types = const [CategoryRecord, _$CategoryRecord];
  @override
  final String wireName = 'CategoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ac;
    if (value != null) {
      result
        ..add('AC')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.pool;
    if (value != null) {
      result
        ..add('Pool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.heater;
    if (value != null) {
      result
        ..add('Heater')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.petFood;
    if (value != null) {
      result
        ..add('PetFood')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.laundryAccesories;
    if (value != null) {
      result
        ..add('LaundryAccesories')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cleaningAccesories;
    if (value != null) {
      result
        ..add('CleaningAccesories')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.workoutEquipment;
    if (value != null) {
      result
        ..add('WorkoutEquipment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.entertaiment;
    if (value != null) {
      result
        ..add('Entertaiment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.drinksAndCocktails;
    if (value != null) {
      result
        ..add('DrinksAndCocktails')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.productsRef;
    if (value != null) {
      result
        ..add('productsRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.electronics;
    if (value != null) {
      result
        ..add('Electronics')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.electricCars;
    if (value != null) {
      result
        ..add('ElectricCars')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CategoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'AC':
          result.ac = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Pool':
          result.pool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Heater':
          result.heater = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'PetFood':
          result.petFood = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'LaundryAccesories':
          result.laundryAccesories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'CleaningAccesories':
          result.cleaningAccesories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'WorkoutEquipment':
          result.workoutEquipment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Entertaiment':
          result.entertaiment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'DrinksAndCocktails':
          result.drinksAndCocktails = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'productsRef':
          result.productsRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Electronics':
          result.electronics = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ElectricCars':
          result.electricCars = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryRecord extends CategoryRecord {
  @override
  final bool? ac;
  @override
  final bool? pool;
  @override
  final bool? heater;
  @override
  final bool? petFood;
  @override
  final bool? laundryAccesories;
  @override
  final bool? cleaningAccesories;
  @override
  final bool? workoutEquipment;
  @override
  final bool? entertaiment;
  @override
  final bool? drinksAndCocktails;
  @override
  final DocumentReference<Object?>? productsRef;
  @override
  final bool? electronics;
  @override
  final bool? electricCars;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoryRecord([void Function(CategoryRecordBuilder)? updates]) =>
      (new CategoryRecordBuilder()..update(updates))._build();

  _$CategoryRecord._(
      {this.ac,
      this.pool,
      this.heater,
      this.petFood,
      this.laundryAccesories,
      this.cleaningAccesories,
      this.workoutEquipment,
      this.entertaiment,
      this.drinksAndCocktails,
      this.productsRef,
      this.electronics,
      this.electricCars,
      this.ffRef})
      : super._();

  @override
  CategoryRecord rebuild(void Function(CategoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryRecordBuilder toBuilder() =>
      new CategoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryRecord &&
        ac == other.ac &&
        pool == other.pool &&
        heater == other.heater &&
        petFood == other.petFood &&
        laundryAccesories == other.laundryAccesories &&
        cleaningAccesories == other.cleaningAccesories &&
        workoutEquipment == other.workoutEquipment &&
        entertaiment == other.entertaiment &&
        drinksAndCocktails == other.drinksAndCocktails &&
        productsRef == other.productsRef &&
        electronics == other.electronics &&
        electricCars == other.electricCars &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, ac.hashCode),
                                                    pool.hashCode),
                                                heater.hashCode),
                                            petFood.hashCode),
                                        laundryAccesories.hashCode),
                                    cleaningAccesories.hashCode),
                                workoutEquipment.hashCode),
                            entertaiment.hashCode),
                        drinksAndCocktails.hashCode),
                    productsRef.hashCode),
                electronics.hashCode),
            electricCars.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryRecord')
          ..add('ac', ac)
          ..add('pool', pool)
          ..add('heater', heater)
          ..add('petFood', petFood)
          ..add('laundryAccesories', laundryAccesories)
          ..add('cleaningAccesories', cleaningAccesories)
          ..add('workoutEquipment', workoutEquipment)
          ..add('entertaiment', entertaiment)
          ..add('drinksAndCocktails', drinksAndCocktails)
          ..add('productsRef', productsRef)
          ..add('electronics', electronics)
          ..add('electricCars', electricCars)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoryRecordBuilder
    implements Builder<CategoryRecord, CategoryRecordBuilder> {
  _$CategoryRecord? _$v;

  bool? _ac;
  bool? get ac => _$this._ac;
  set ac(bool? ac) => _$this._ac = ac;

  bool? _pool;
  bool? get pool => _$this._pool;
  set pool(bool? pool) => _$this._pool = pool;

  bool? _heater;
  bool? get heater => _$this._heater;
  set heater(bool? heater) => _$this._heater = heater;

  bool? _petFood;
  bool? get petFood => _$this._petFood;
  set petFood(bool? petFood) => _$this._petFood = petFood;

  bool? _laundryAccesories;
  bool? get laundryAccesories => _$this._laundryAccesories;
  set laundryAccesories(bool? laundryAccesories) =>
      _$this._laundryAccesories = laundryAccesories;

  bool? _cleaningAccesories;
  bool? get cleaningAccesories => _$this._cleaningAccesories;
  set cleaningAccesories(bool? cleaningAccesories) =>
      _$this._cleaningAccesories = cleaningAccesories;

  bool? _workoutEquipment;
  bool? get workoutEquipment => _$this._workoutEquipment;
  set workoutEquipment(bool? workoutEquipment) =>
      _$this._workoutEquipment = workoutEquipment;

  bool? _entertaiment;
  bool? get entertaiment => _$this._entertaiment;
  set entertaiment(bool? entertaiment) => _$this._entertaiment = entertaiment;

  bool? _drinksAndCocktails;
  bool? get drinksAndCocktails => _$this._drinksAndCocktails;
  set drinksAndCocktails(bool? drinksAndCocktails) =>
      _$this._drinksAndCocktails = drinksAndCocktails;

  DocumentReference<Object?>? _productsRef;
  DocumentReference<Object?>? get productsRef => _$this._productsRef;
  set productsRef(DocumentReference<Object?>? productsRef) =>
      _$this._productsRef = productsRef;

  bool? _electronics;
  bool? get electronics => _$this._electronics;
  set electronics(bool? electronics) => _$this._electronics = electronics;

  bool? _electricCars;
  bool? get electricCars => _$this._electricCars;
  set electricCars(bool? electricCars) => _$this._electricCars = electricCars;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoryRecordBuilder() {
    CategoryRecord._initializeBuilder(this);
  }

  CategoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ac = $v.ac;
      _pool = $v.pool;
      _heater = $v.heater;
      _petFood = $v.petFood;
      _laundryAccesories = $v.laundryAccesories;
      _cleaningAccesories = $v.cleaningAccesories;
      _workoutEquipment = $v.workoutEquipment;
      _entertaiment = $v.entertaiment;
      _drinksAndCocktails = $v.drinksAndCocktails;
      _productsRef = $v.productsRef;
      _electronics = $v.electronics;
      _electricCars = $v.electricCars;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryRecord;
  }

  @override
  void update(void Function(CategoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryRecord build() => _build();

  _$CategoryRecord _build() {
    final _$result = _$v ??
        new _$CategoryRecord._(
            ac: ac,
            pool: pool,
            heater: heater,
            petFood: petFood,
            laundryAccesories: laundryAccesories,
            cleaningAccesories: cleaningAccesories,
            workoutEquipment: workoutEquipment,
            entertaiment: entertaiment,
            drinksAndCocktails: drinksAndCocktails,
            productsRef: productsRef,
            electronics: electronics,
            electricCars: electricCars,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
