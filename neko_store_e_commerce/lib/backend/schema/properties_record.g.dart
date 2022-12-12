// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PropertiesRecord> _$propertiesRecordSerializer =
    new _$PropertiesRecordSerializer();

class _$PropertiesRecordSerializer
    implements StructuredSerializer<PropertiesRecord> {
  @override
  final Iterable<Type> types = const [PropertiesRecord, _$PropertiesRecord];
  @override
  final String wireName = 'PropertiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PropertiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mainImage;
    if (value != null) {
      result
        ..add('mainImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDraft;
    if (value != null) {
      result
        ..add('isDraft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ratingSummary;
    if (value != null) {
      result
        ..add('ratingSummary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.taxRate;
    if (value != null) {
      result
        ..add('taxRate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastUpdated;
    if (value != null) {
      result
        ..add('lastUpdated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isLive;
    if (value != null) {
      result
        ..add('isLive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('Stock')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.productName;
    if (value != null) {
      result
        ..add('productName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productDescription;
    if (value != null) {
      result
        ..add('productDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productLocation;
    if (value != null) {
      result
        ..add('productLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.productAdress;
    if (value != null) {
      result
        ..add('productAdress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productRegion;
    if (value != null) {
      result
        ..add('productRegion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  PropertiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mainImage':
          result.mainImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDraft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ratingSummary':
          result.ratingSummary = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'taxRate':
          result.taxRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastUpdated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isLive':
          result.isLive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'productName':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'productDescription':
          result.productDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'productLocation':
          result.productLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'productAdress':
          result.productAdress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'productRegion':
          result.productRegion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$PropertiesRecord extends PropertiesRecord {
  @override
  final String? mainImage;
  @override
  final bool? isDraft;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final double? ratingSummary;
  @override
  final int? price;
  @override
  final double? taxRate;
  @override
  final String? notes;
  @override
  final DateTime? lastUpdated;
  @override
  final bool? isLive;
  @override
  final double? stock;
  @override
  final String? productName;
  @override
  final String? productDescription;
  @override
  final LatLng? productLocation;
  @override
  final String? productAdress;
  @override
  final String? productRegion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PropertiesRecord(
          [void Function(PropertiesRecordBuilder)? updates]) =>
      (new PropertiesRecordBuilder()..update(updates))._build();

  _$PropertiesRecord._(
      {this.mainImage,
      this.isDraft,
      this.userRef,
      this.ratingSummary,
      this.price,
      this.taxRate,
      this.notes,
      this.lastUpdated,
      this.isLive,
      this.stock,
      this.productName,
      this.productDescription,
      this.productLocation,
      this.productAdress,
      this.productRegion,
      this.ffRef})
      : super._();

  @override
  PropertiesRecord rebuild(void Function(PropertiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertiesRecordBuilder toBuilder() =>
      new PropertiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertiesRecord &&
        mainImage == other.mainImage &&
        isDraft == other.isDraft &&
        userRef == other.userRef &&
        ratingSummary == other.ratingSummary &&
        price == other.price &&
        taxRate == other.taxRate &&
        notes == other.notes &&
        lastUpdated == other.lastUpdated &&
        isLive == other.isLive &&
        stock == other.stock &&
        productName == other.productName &&
        productDescription == other.productDescription &&
        productLocation == other.productLocation &&
        productAdress == other.productAdress &&
        productRegion == other.productRegion &&
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    mainImage
                                                                        .hashCode),
                                                                isDraft
                                                                    .hashCode),
                                                            userRef.hashCode),
                                                        ratingSummary.hashCode),
                                                    price.hashCode),
                                                taxRate.hashCode),
                                            notes.hashCode),
                                        lastUpdated.hashCode),
                                    isLive.hashCode),
                                stock.hashCode),
                            productName.hashCode),
                        productDescription.hashCode),
                    productLocation.hashCode),
                productAdress.hashCode),
            productRegion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropertiesRecord')
          ..add('mainImage', mainImage)
          ..add('isDraft', isDraft)
          ..add('userRef', userRef)
          ..add('ratingSummary', ratingSummary)
          ..add('price', price)
          ..add('taxRate', taxRate)
          ..add('notes', notes)
          ..add('lastUpdated', lastUpdated)
          ..add('isLive', isLive)
          ..add('stock', stock)
          ..add('productName', productName)
          ..add('productDescription', productDescription)
          ..add('productLocation', productLocation)
          ..add('productAdress', productAdress)
          ..add('productRegion', productRegion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PropertiesRecordBuilder
    implements Builder<PropertiesRecord, PropertiesRecordBuilder> {
  _$PropertiesRecord? _$v;

  String? _mainImage;
  String? get mainImage => _$this._mainImage;
  set mainImage(String? mainImage) => _$this._mainImage = mainImage;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  double? _ratingSummary;
  double? get ratingSummary => _$this._ratingSummary;
  set ratingSummary(double? ratingSummary) =>
      _$this._ratingSummary = ratingSummary;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  double? _taxRate;
  double? get taxRate => _$this._taxRate;
  set taxRate(double? taxRate) => _$this._taxRate = taxRate;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  bool? _isLive;
  bool? get isLive => _$this._isLive;
  set isLive(bool? isLive) => _$this._isLive = isLive;

  double? _stock;
  double? get stock => _$this._stock;
  set stock(double? stock) => _$this._stock = stock;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _productDescription;
  String? get productDescription => _$this._productDescription;
  set productDescription(String? productDescription) =>
      _$this._productDescription = productDescription;

  LatLng? _productLocation;
  LatLng? get productLocation => _$this._productLocation;
  set productLocation(LatLng? productLocation) =>
      _$this._productLocation = productLocation;

  String? _productAdress;
  String? get productAdress => _$this._productAdress;
  set productAdress(String? productAdress) =>
      _$this._productAdress = productAdress;

  String? _productRegion;
  String? get productRegion => _$this._productRegion;
  set productRegion(String? productRegion) =>
      _$this._productRegion = productRegion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PropertiesRecordBuilder() {
    PropertiesRecord._initializeBuilder(this);
  }

  PropertiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainImage = $v.mainImage;
      _isDraft = $v.isDraft;
      _userRef = $v.userRef;
      _ratingSummary = $v.ratingSummary;
      _price = $v.price;
      _taxRate = $v.taxRate;
      _notes = $v.notes;
      _lastUpdated = $v.lastUpdated;
      _isLive = $v.isLive;
      _stock = $v.stock;
      _productName = $v.productName;
      _productDescription = $v.productDescription;
      _productLocation = $v.productLocation;
      _productAdress = $v.productAdress;
      _productRegion = $v.productRegion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertiesRecord;
  }

  @override
  void update(void Function(PropertiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertiesRecord build() => _build();

  _$PropertiesRecord _build() {
    final _$result = _$v ??
        new _$PropertiesRecord._(
            mainImage: mainImage,
            isDraft: isDraft,
            userRef: userRef,
            ratingSummary: ratingSummary,
            price: price,
            taxRate: taxRate,
            notes: notes,
            lastUpdated: lastUpdated,
            isLive: isLive,
            stock: stock,
            productName: productName,
            productDescription: productDescription,
            productLocation: productLocation,
            productAdress: productAdress,
            productRegion: productRegion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
