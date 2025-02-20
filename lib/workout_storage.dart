import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'data_structures.dart';
import 'isar_structures.dart';

class WorkoutStorage with ChangeNotifier{
  late Future<Isar> db;
  List<Workout> workouts=[tempData];
  static Future<WorkoutStorage> create() async{

    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [IWorkoutSchema],
      directory:dir.path
    );
    WorkoutStorage output= WorkoutStorage._create();
    return WorkoutStorage._create();
  }
  void addWorkout(Workout newWorkout){
    workouts.add(newWorkout);
    notifyListeners();
  }

  List<Workout> get getWorkouts{
    List<Workout> out = List<Workout>.from(workouts); //I believe a shallow copy is all i need
    return out; //to expose the member variable list
  }
  WorkoutStorage._create(){

  }
  //WorkoutStorage(Workout input):_workouts=[input];
}