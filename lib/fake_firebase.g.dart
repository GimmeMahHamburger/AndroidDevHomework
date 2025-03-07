// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fake_firebase.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFWorkoutCollection on Isar {
  IsarCollection<FWorkout> get fWorkouts => this.collection();
}

const FWorkoutSchema = CollectionSchema(
  name: r'Workout',
  id: 1535508263686820971,
  properties: {
    r'collection': PropertySchema(
      id: 0,
      name: r'collection',
      type: IsarType.objectList,
      target: r'Result',
    ),
    r'competitive': PropertySchema(
      id: 1,
      name: r'competitive',
      type: IsarType.bool,
    ),
    r'date': PropertySchema(
      id: 2,
      name: r'date',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _fWorkoutEstimateSize,
  serialize: _fWorkoutSerialize,
  deserialize: _fWorkoutDeserialize,
  deserializeProp: _fWorkoutDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Result': FResultSchema, r'Exercise': FExerciseSchema},
  getId: _fWorkoutGetId,
  getLinks: _fWorkoutGetLinks,
  attach: _fWorkoutAttach,
  version: '3.1.0',
);

int _fWorkoutEstimateSize(
  FWorkout object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.collection;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FResult]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += FResultSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _fWorkoutSerialize(
  FWorkout object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<FResult>(
    offsets[0],
    allOffsets,
    FResultSchema.serialize,
    object.collection,
  );
  writer.writeBool(offsets[1], object.competitive);
  writer.writeDateTime(offsets[2], object.date);
}

FWorkout _fWorkoutDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FWorkout();
  object.collection = reader.readObjectList<FResult>(
    offsets[0],
    FResultSchema.deserialize,
    allOffsets,
    FResult(),
  );
  object.competitive = reader.readBoolOrNull(offsets[1]);
  object.date = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  return object;
}

P _fWorkoutDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<FResult>(
        offset,
        FResultSchema.deserialize,
        allOffsets,
        FResult(),
      )) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _fWorkoutGetId(FWorkout object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _fWorkoutGetLinks(FWorkout object) {
  return [];
}

void _fWorkoutAttach(IsarCollection<dynamic> col, Id id, FWorkout object) {
  object.id = id;
}

extension FWorkoutQueryWhereSort on QueryBuilder<FWorkout, FWorkout, QWhere> {
  QueryBuilder<FWorkout, FWorkout, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FWorkoutQueryWhere on QueryBuilder<FWorkout, FWorkout, QWhereClause> {
  QueryBuilder<FWorkout, FWorkout, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<FWorkout, FWorkout, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterWhereClause> idBetween(
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

extension FWorkoutQueryFilter
    on QueryBuilder<FWorkout, FWorkout, QFilterCondition> {
  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> collectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'collection',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
      collectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'collection',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> collectionIsEmpty() {
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> competitiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'competitive',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition>
      competitiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'competitive',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> competitiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competitive',
        value: value,
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> dateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> idBetween(
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

extension FWorkoutQueryObject
    on QueryBuilder<FWorkout, FWorkout, QFilterCondition> {
  QueryBuilder<FWorkout, FWorkout, QAfterFilterCondition> collectionElement(
      FilterQuery<FResult> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'collection');
    });
  }
}

extension FWorkoutQueryLinks
    on QueryBuilder<FWorkout, FWorkout, QFilterCondition> {}

extension FWorkoutQuerySortBy on QueryBuilder<FWorkout, FWorkout, QSortBy> {
  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> sortByCompetitive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competitive', Sort.asc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> sortByCompetitiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competitive', Sort.desc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }
}

extension FWorkoutQuerySortThenBy
    on QueryBuilder<FWorkout, FWorkout, QSortThenBy> {
  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> thenByCompetitive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competitive', Sort.asc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> thenByCompetitiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competitive', Sort.desc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FWorkout, FWorkout, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FWorkoutQueryWhereDistinct
    on QueryBuilder<FWorkout, FWorkout, QDistinct> {
  QueryBuilder<FWorkout, FWorkout, QDistinct> distinctByCompetitive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'competitive');
    });
  }

  QueryBuilder<FWorkout, FWorkout, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }
}

extension FWorkoutQueryProperty
    on QueryBuilder<FWorkout, FWorkout, QQueryProperty> {
  QueryBuilder<FWorkout, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FWorkout, List<FResult>?, QQueryOperations>
      collectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collection');
    });
  }

  QueryBuilder<FWorkout, bool?, QQueryOperations> competitiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'competitive');
    });
  }

  QueryBuilder<FWorkout, DateTime?, QQueryOperations> dateProperty() {
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

const FResultSchema = Schema(
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
    ),
    r'performer': PropertySchema(
      id: 2,
      name: r'performer',
      type: IsarType.string,
    )
  },
  estimateSize: _fResultEstimateSize,
  serialize: _fResultSerialize,
  deserialize: _fResultDeserialize,
  deserializeProp: _fResultDeserializeProp,
);

int _fResultEstimateSize(
  FResult object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.exercise;
    if (value != null) {
      bytesCount += 3 +
          FExerciseSchema.estimateSize(
              value, allOffsets[FExercise]!, allOffsets);
    }
  }
  {
    final value = object.performer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _fResultSerialize(
  FResult object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<FExercise>(
    offsets[0],
    allOffsets,
    FExerciseSchema.serialize,
    object.exercise,
  );
  writer.writeDouble(offsets[1], object.percent);
  writer.writeString(offsets[2], object.performer);
}

FResult _fResultDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FResult();
  object.exercise = reader.readObjectOrNull<FExercise>(
    offsets[0],
    FExerciseSchema.deserialize,
    allOffsets,
  );
  object.percent = reader.readDoubleOrNull(offsets[1]);
  object.performer = reader.readStringOrNull(offsets[2]);
  return object;
}

P _fResultDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<FExercise>(
        offset,
        FExerciseSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FResultQueryFilter
    on QueryBuilder<FResult, FResult, QFilterCondition> {
  QueryBuilder<FResult, FResult, QAfterFilterCondition> exerciseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exercise',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> exerciseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exercise',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> percentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'percent',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> percentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'percent',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> percentEqualTo(
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

  QueryBuilder<FResult, FResult, QAfterFilterCondition> percentGreaterThan(
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

  QueryBuilder<FResult, FResult, QAfterFilterCondition> percentLessThan(
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

  QueryBuilder<FResult, FResult, QAfterFilterCondition> percentBetween(
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

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'performer',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'performer',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'performer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'performer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'performer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'performer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'performer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'performer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'performer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'performer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'performer',
        value: '',
      ));
    });
  }

  QueryBuilder<FResult, FResult, QAfterFilterCondition> performerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'performer',
        value: '',
      ));
    });
  }
}

extension FResultQueryObject
    on QueryBuilder<FResult, FResult, QFilterCondition> {
  QueryBuilder<FResult, FResult, QAfterFilterCondition> exercise(
      FilterQuery<FExercise> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'exercise');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FExerciseSchema = Schema(
  name: r'Exercise',
  id: 2972066467915231902,
  properties: {
    r'measure': PropertySchema(
      id: 0,
      name: r'measure',
      type: IsarType.string,
      enumMap: _FExercisemeasureEnumValueMap,
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
  estimateSize: _fExerciseEstimateSize,
  serialize: _fExerciseSerialize,
  deserialize: _fExerciseDeserialize,
  deserializeProp: _fExerciseDeserializeProp,
);

int _fExerciseEstimateSize(
  FExercise object,
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

void _fExerciseSerialize(
  FExercise object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.measure?.name);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.target);
}

FExercise _fExerciseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FExercise();
  object.measure =
      _FExercisemeasureValueEnumMap[reader.readStringOrNull(offsets[0])];
  object.name = reader.readStringOrNull(offsets[1]);
  object.target = reader.readLongOrNull(offsets[2]);
  return object;
}

P _fExerciseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_FExercisemeasureValueEnumMap[reader.readStringOrNull(offset)])
          as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FExercisemeasureEnumValueMap = {
  r'seconds': r'seconds',
  r'repetitions': r'repetitions',
  r'meters': r'meters',
};
const _FExercisemeasureValueEnumMap = {
  r'seconds': Unit.seconds,
  r'repetitions': Unit.repetitions,
  r'meters': Unit.meters,
};

extension FExerciseQueryFilter
    on QueryBuilder<FExercise, FExercise, QFilterCondition> {
  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'measure',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'measure',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureEqualTo(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureGreaterThan(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureLessThan(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureBetween(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureStartsWith(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureEndsWith(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureContains(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureMatches(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> measureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measure',
        value: '',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition>
      measureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measure',
        value: '',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameContains(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> targetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'target',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> targetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'target',
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> targetEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> targetGreaterThan(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> targetLessThan(
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

  QueryBuilder<FExercise, FExercise, QAfterFilterCondition> targetBetween(
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

extension FExerciseQueryObject
    on QueryBuilder<FExercise, FExercise, QFilterCondition> {}
