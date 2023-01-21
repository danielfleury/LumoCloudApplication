// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_case_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectCaseRecord> _$projectCaseRecordSerializer =
    new _$ProjectCaseRecordSerializer();

class _$ProjectCaseRecordSerializer
    implements StructuredSerializer<ProjectCaseRecord> {
  @override
  final Iterable<Type> types = const [ProjectCaseRecord, _$ProjectCaseRecord];
  @override
  final String wireName = 'ProjectCaseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectCaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('Creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.administrators;
    if (value != null) {
      result
        ..add('administrators')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.creationDate;
    if (value != null) {
      result
        ..add('CreationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProjectCaseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectCaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'administrators':
          result.administrators.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'CreationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ProjectCaseRecord extends ProjectCaseRecord {
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? creator;
  @override
  final String? description;
  @override
  final BuiltList<DocumentReference<Object?>>? administrators;
  @override
  final DateTime? creationDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProjectCaseRecord(
          [void Function(ProjectCaseRecordBuilder)? updates]) =>
      (new ProjectCaseRecordBuilder()..update(updates))._build();

  _$ProjectCaseRecord._(
      {this.title,
      this.creator,
      this.description,
      this.administrators,
      this.creationDate,
      this.ffRef})
      : super._();

  @override
  ProjectCaseRecord rebuild(void Function(ProjectCaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectCaseRecordBuilder toBuilder() =>
      new ProjectCaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectCaseRecord &&
        title == other.title &&
        creator == other.creator &&
        description == other.description &&
        administrators == other.administrators &&
        creationDate == other.creationDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), creator.hashCode),
                    description.hashCode),
                administrators.hashCode),
            creationDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectCaseRecord')
          ..add('title', title)
          ..add('creator', creator)
          ..add('description', description)
          ..add('administrators', administrators)
          ..add('creationDate', creationDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProjectCaseRecordBuilder
    implements Builder<ProjectCaseRecord, ProjectCaseRecordBuilder> {
  _$ProjectCaseRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<DocumentReference<Object?>>? _administrators;
  ListBuilder<DocumentReference<Object?>> get administrators =>
      _$this._administrators ??= new ListBuilder<DocumentReference<Object?>>();
  set administrators(ListBuilder<DocumentReference<Object?>>? administrators) =>
      _$this._administrators = administrators;

  DateTime? _creationDate;
  DateTime? get creationDate => _$this._creationDate;
  set creationDate(DateTime? creationDate) =>
      _$this._creationDate = creationDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProjectCaseRecordBuilder() {
    ProjectCaseRecord._initializeBuilder(this);
  }

  ProjectCaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _creator = $v.creator;
      _description = $v.description;
      _administrators = $v.administrators?.toBuilder();
      _creationDate = $v.creationDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectCaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectCaseRecord;
  }

  @override
  void update(void Function(ProjectCaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectCaseRecord build() => _build();

  _$ProjectCaseRecord _build() {
    _$ProjectCaseRecord _$result;
    try {
      _$result = _$v ??
          new _$ProjectCaseRecord._(
              title: title,
              creator: creator,
              description: description,
              administrators: _administrators?.build(),
              creationDate: creationDate,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'administrators';
        _administrators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectCaseRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
