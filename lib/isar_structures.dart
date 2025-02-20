import 'package:isar/isar.dart';
part 'isar_structures.g.dart';


enum Unit {seconds, repetitions, meters}

@embedded
@Name("Exercise")
class IExercise {
  String? name;
  int? target;
  @Enumerated(EnumType.name)
  Unit? measure;
}

@embedded
@Name("Result")
class IResult {
  IExercise? exercise;
  double? percent;
}

@collection
@Name("Workout")
class IWorkout {
  Id? id = null;
  DateTime? date;
  List<IResult>? collection;
}
