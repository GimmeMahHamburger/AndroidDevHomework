// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_structures.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIWorkoutCollection on Isar {
  IsarCollection<IWorkout> get iWorkouts => this.collection();
}

const IWorkoutSchema = CollectionSchema(
  name: r'Workout',
  id: 1535508263686820971,
  properties: {
    r'collection': PropertySchema(
      id: 0,
      name: r'collection',
      type: IsarType.objectList,
      target: r'Result',
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _iWorkoutEstimateSize,
  serialize: _iWorkoutSerialize,
  deserialize: _iWorkoutDeserialize,
  deserializeProp: _iWorkoutDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Result': IResultSchema, r'Exercise': IExerciseSchema},
  getId: _iWorkoutGetId,
  getLinks: _iWorkoutGetLinks,
  attach: _iWorkoutAttach,
  version: '3.1.0',
);

int _iWorkoutEstimateSize(
  IWorkout object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.collection;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[IResult]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += IResultSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _iWorkoutSerialize(
  IWorkout object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<IResult>(
    offsets[0],
    allOffsets,
    IResultSchema.serialize,
    object.collection,
  );
  writer.writeDateTime(offsets[1], object.date);
}

IWorkout _iWorkoutDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IWorkout();
  object.collection = reader.readObjectList<IResult>(
    offsets[0],
    IResultSchema.deserialize,
    allOffsets,
    IResult(),
  );
  object.date = reader.readDateTimeOrNull(offsets[1]);
  object.id = id;
  return object;
}

P _iWorkoutDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<IResult>(
        offset,
        IResultSchema.deserialize,
        allOffsets,
        IResult(),
      )) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iWorkoutGetId(IWorkout object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _iWorkoutGetLinks(IWorkout object) {
  return [];
}

void _iWorkoutAttach(IsarCollection<dynamic> col, Id id, IWorkout object) {
  object.id = id;
}

extension IWorkoutQueryWhereSort on QueryBuilder<IWorkout, IWorkout, QWhere> {
  QueryBuilder<IWorkout, IWorkout, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IWorkoutQueryWhere on QueryBuilder<IWorkout, IWorkout, QWhereClause> {
  QueryBuilder<IWorkout, IWorkout, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IWorkoutQueryFilter
    on QueryBuilder<IWorkout, IWorkout, QFilterCondition> {
  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> collectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'collection',
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition>
      collectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'collection',
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition>
      collectionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collection',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> collectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collection',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition>
      collectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collection',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition>
      collectionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collection',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition>
      collectionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collection',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition>
      collectionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collection',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> dateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> dateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> dateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> dateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IWorkoutQueryObject
    on QueryBuilder<IWorkout, IWorkout, QFilterCondition> {
  QueryBuilder<IWorkout, IWorkout, QAfterFilterCondition> collectionElement(
      FilterQuery<IResult> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'collection');
    });
  }
}

extension IWorkoutQueryLinks
    on QueryBuilder<IWorkout, IWorkout, QFilterCondition> {}

extension IWorkoutQuerySortBy on QueryBuilder<IWorkout, IWorkout, QSortBy> {
  QueryBuilder<IWorkout, IWorkout, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }
}

extension IWorkoutQuerySortThenBy
    on QueryBuilder<IWorkout, IWorkout, QSortThenBy> {
  QueryBuilder<IWorkout, IWorkout, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IWorkout, IWorkout, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension IWorkoutQueryWhereDistinct
    on QueryBuilder<IWorkout, IWorkout, QDistinct> {
  QueryBuilder<IWorkout, IWorkout, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }
}

extension IWorkoutQueryProperty
    on QueryBuilder<IWorkout, IWorkout, QQueryProperty> {
  QueryBuilder<IWorkout, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IWorkout, List<IResult>?, QQueryOperations>
      collectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collection');
    });
  }

  QueryBuilder<IWorkout, DateTime?, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IExerciseSchema = Schema(
  name: r'Exercise',
  id: 2972066467915231902,
  properties: {
    r'measure': PropertySchema(
      id: 0,
      name: r'measure',
      type: IsarType.string,
      enumMap: _IExercisemeasureEnumValueMap,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'target': PropertySchema(
      id: 2,
      name: r'target',
      type: IsarType.long,
    )
  },
  estimateSize: _iExerciseEstimateSize,
  serialize: _iExerciseSerialize,
  deserialize: _iExerciseDeserialize,
  deserializeProp: _iExerciseDeserializeProp,
);

int _iExerciseEstimateSize(
  IExercise object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.measure;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _iExerciseSerialize(
  IExercise object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.measure?.name);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.target);
}

IExercise _iExerciseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IExercise();
  object.measure =
      _IExercisemeasureValueEnumMap[reader.readStringOrNull(offsets[0])];
  object.name = reader.readStringOrNull(offsets[1]);
  object.target = reader.readLongOrNull(offsets[2]);
  return object;
}

P _iExerciseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_IExercisemeasureValueEnumMap[reader.readStringOrNull(offset)])
          as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _IExercisemeasureEnumValueMap = {
  r'seconds': r'seconds',
  r'repetitions': r'repetitions',
  r'meters': r'meters',
};
const _IExercisemeasureValueEnumMap = {
  r'seconds': Unit.seconds,
  r'repetitions': Unit.repetitions,
  r'meters': Unit.meters,
};

extension IExerciseQueryFilter
    on QueryBuilder<IExercise, IExercise, QFilterCondition> {
  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'measure',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'measure',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureEqualTo(
    Unit? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureGreaterThan(
    Unit? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureLessThan(
    Unit? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureBetween(
    Unit? lower,
    Unit? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'measure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'measure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'measure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'measure',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> measureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measure',
        value: '',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition>
      measureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measure',
        value: '',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> targetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'target',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> targetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'target',
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> targetEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> targetGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> targetLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<IExercise, IExercise, QAfterFilterCondition> targetBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'target',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IExerciseQueryObject
    on QueryBuilder<IExercise, IExercise, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IResultSchema = Schema(
  name: r'Result',
  id: 2710412425235774975,
  properties: {
    r'exercise': PropertySchema(
      id: 0,
      name: r'exercise',
      type: IsarType.object,
      target: r'Exercise',
    ),
    r'percent': PropertySchema(
      id: 1,
      name: r'percent',
      type: IsarType.double,
    )
  },
  estimateSize: _iResultEstimateSize,
  serialize: _iResultSerialize,
  deserialize: _iResultDeserialize,
  deserializeProp: _iResultDeserializeProp,
);

int _iResultEstimateSize(
  IResult object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.exercise;
    if (value != null) {
      bytesCount += 3 +
          IExerciseSchema.estimateSize(
              value, allOffsets[IExercise]!, allOffsets);
    }
  }
  return bytesCount;
}

void _iResultSerialize(
  IResult object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<IExercise>(
    offsets[0],
    allOffsets,
    IExerciseSchema.serialize,
    object.exercise,
  );
  writer.writeDouble(offsets[1], object.percent);
}

IResult _iResultDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IResult();
  object.exercise = reader.readObjectOrNull<IExercise>(
    offsets[0],
    IExerciseSchema.deserialize,
    allOffsets,
  );
  object.percent = reader.readDoubleOrNull(offsets[1]);
  return object;
}

P _iResultDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<IExercise>(
        offset,
        IExerciseSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IResultQueryFilter
    on QueryBuilder<IResult, IResult, QFilterCondition> {
  QueryBuilder<IResult, IResult, QAfterFilterCondition> exerciseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exercise',
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> exerciseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exercise',
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> percentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'percent',
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> percentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'percent',
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> percentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'percent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> percentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'percent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> percentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'percent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IResult, IResult, QAfterFilterCondition> percentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'percent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension IResultQueryObject
    on QueryBuilder<IResult, IResult, QFilterCondition> {
  QueryBuilder<IResult, IResult, QAfterFilterCondition> exercise(
      FilterQuery<IExercise> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'exercise');
    });
  }
}
