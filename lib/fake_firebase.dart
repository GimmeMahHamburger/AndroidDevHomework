import 'package:isar/isar.dart';

import 'data_structures.dart';

part "fake_firebase.g.dart";

@collection
@Name("Workout")
class FWorkout {
  Id? id = null;
  bool? competitive;
  DateTime? date;
  List<FResult>? collection;
}

@embedded
@Name("Result")
class FResult {
  FExercise? exercise;
  String? performer;
  double? percent;
}

@embedded
@Name("Exercise")
class FExercise {
  String? name;
  int? target;
  @Enumerated(EnumType.name)
  Unit? measure;
}

FExercise toFExercise(Exercise input){
  FExercise output=FExercise();
  output.measure=input.measure;
  output.name=input.name;
  output.target=input.target;
  return output;
}

Exercise FtoExercise(FExercise input){
  return Exercise(input.name!,input.target!,input.measure!);
}

FResult toFResult(Result input,String name){
  FResult output=FResult();
  output.exercise=toFExercise(input.exercise);
  output.percent=input.percent;
  output.performer=name;
  return output;
}

Result FtoResult(FResult input){
  return Result(FtoExercise(input.exercise!),input.percent!);
}

FWorkout toFWorkout(Workout input,String name){
  FWorkout output=FWorkout();
  output.collection=List<FResult>.empty(growable:true);
  output.date=input.date;
  for(int i=0;i<input.collection.length;i++){
    output.collection!.add(toFResult(input.collection[i],name));
  }
  return output;
}

Workout FtoWorkout(FWorkout input){
  List<Result> tempList=List<Result>.empty(growable:true);
  for(int i=0;i<input.collection!.length;i++){
    tempList.add(FtoResult(input.collection![i]));
  }
  return Workout(input.date!,tempList);
}