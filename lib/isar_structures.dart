import 'package:isar/isar.dart';
import 'data_structures.dart';
part 'isar_structures.g.dart';


//enum Unit {seconds, repetitions, meters}


@embedded
@Name("Exercise")
class IExercise {
  String? name;
  int? target;
  @Enumerated(EnumType.name)
  Unit? measure;
}

IExercise toIExercise(Exercise input){
  IExercise output=IExercise();
  output.measure=input.measure;
  output.name=input.name;
  output.target=input.target;
  return output;
}

Exercise toExercise(IExercise input){
  return Exercise(input.name!,input.target!,input.measure!);
}

@embedded
@Name("Result")
class IResult {
  IExercise? exercise;
  double? percent;
}

IResult toIResult(Result input){
  IResult output=IResult();
  output.exercise=toIExercise(input.exercise);
  output.percent=input.percent;
  return output;
}

Result toResult(IResult input){
  return Result(toExercise(input.exercise!),input.percent!);
}

@collection
@Name("Workout")
class IWorkout {
  Id? id = null;
  DateTime? date;
  List<IResult>? collection;
}

IWorkout toIWorkout(Workout input){
  IWorkout output=IWorkout();
  output.collection=List<IResult>.empty(growable:true);
  output.date=input.date;
  for(int i=0;i<input.collection.length;i++){
    output.collection!.add(toIResult(input.collection[i]));
  }
  return output;
}

Workout toWorkout(IWorkout input){
  List<Result> tempList=List<Result>.empty(growable:true);
  for(int i=0;i<input.collection!.length;i++){
    tempList.add(toResult(input.collection![i]));
  }
  return Workout(input.date!,tempList);
}