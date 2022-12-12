// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuperUserRecord> _$superUserRecordSerializer =
    new _$SuperUserRecordSerializer();

class _$SuperUserRecordSerializer
    implements StructuredSerializer<SuperUserRecord> {
  @override
  final Iterable<Type> types = const [SuperUserRecord, _$SuperUserRecord];
  @override
  final String wireName = 'SuperUserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SuperUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
  SuperUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuperUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$SuperUserRecord extends SuperUserRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? photoUrl;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SuperUserRecord([void Function(SuperUserRecordBuilder)? updates]) =>
      (new SuperUserRecordBuilder()..update(updates))._build();

  _$SuperUserRecord._(
      {this.email,
      this.displayName,
      this.uid,
      this.createdTime,
      this.photoUrl,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  SuperUserRecord rebuild(void Function(SuperUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuperUserRecordBuilder toBuilder() =>
      new SuperUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuperUserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, email.hashCode), displayName.hashCode),
                        uid.hashCode),
                    createdTime.hashCode),
                photoUrl.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuperUserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SuperUserRecordBuilder
    implements Builder<SuperUserRecord, SuperUserRecordBuilder> {
  _$SuperUserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SuperUserRecordBuilder() {
    SuperUserRecord._initializeBuilder(this);
  }

  SuperUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuperUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuperUserRecord;
  }

  @override
  void update(void Function(SuperUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuperUserRecord build() => _build();

  _$SuperUserRecord _build() {
    final _$result = _$v ??
        new _$SuperUserRecord._(
            email: email,
            displayName: displayName,
            uid: uid,
            createdTime: createdTime,
            photoUrl: photoUrl,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
