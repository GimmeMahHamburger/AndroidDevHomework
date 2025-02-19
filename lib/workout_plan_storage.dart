import 'package:flutter/cupertino.dart';

import 'data_structures.dart';

class WorkoutPlanStorage with ChangeNotifier{
  List<WorkoutPlan> workoutPlans=[tempPlan];

  void addWorkout(WorkoutPlan newWorkout){
    workoutPlans.add(newWorkout);
    notifyListeners();
  }

  List<WorkoutPlan> get getWorkoutPlans{
    List<WorkoutPlan> out = List<WorkoutPlan>.from(workoutPlans); //I believe a shallow copy is all i need
    return out; //to expose the member variable list
  }

//WorkoutStorage(Workout input):_workouts=[input];
}