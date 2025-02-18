import 'package:flutter/cupertino.dart';

import 'data_structures.dart';

class WorkoutStorage with ChangeNotifier{
  List<Workout> workouts=[tempData];

  void addWorkout(Workout newWorkout){
    workouts.add(newWorkout);
    notifyListeners();
  }

  List<Workout> get getWorkouts{
    List<Workout> out = List<Workout>.from(workouts); //I believe a shallow copy is all i need
    return out; //to expose the member variable list
  }

  //WorkoutStorage(Workout input):_workouts=[input];
}