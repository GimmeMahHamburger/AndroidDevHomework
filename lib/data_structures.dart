enum Unit {seconds, repetitions, meters}

class Exercise {
  String name;
  int target;
  Unit measure;
  Exercise(this.name, this.target, this.measure);
}

class Result {
  Exercise exercise;
  double percent;
  Result(this.exercise, this.percent);
}

class Workout {
  DateTime date;
  List<Result> collection;
  Workout(this.date, this.collection);
}

class WorkoutPlan{
  String name;
  List<Exercise> collection;
  WorkoutPlan(this.name, this.collection);
}

Workout tempData=Workout(
    DateTime(1,26,23),
    [
      Result(
          Exercise(
              "Squats",
              40,
              Unit.repetitions
          ),
          0.6
      ),
      Result(
          Exercise(
              "Flips",
              3,
              Unit.meters
          ),
          1.0
      )
    ]
);

WorkoutPlan tempPlan = WorkoutPlan("Sample Plan",
    [
     Exercise(
       "Squats",
       40,
       Unit.repetitions
     ),
     Exercise(
       "Flips",
       3,
       Unit.meters
     ),
     Exercise(
       "Slaps",
       54,
       Unit.repetitions
     ),
     Exercise(
       "Asphyxiation",
       2,
       Unit.seconds
     ),
     Exercise(
       "Sudokus",
       40,
       Unit.repetitions
     ),
     Exercise(
       "Cook Eggs",
       500,
       Unit.seconds
     ),
     Exercise(
       "Bird Flipping",
       1,
       Unit.repetitions
     )
    ]
);

Exercise DUMMYEXERCISE=Exercise("DUMMY", 0, Unit.meters);
Result DUMMYRESULT=Result(DUMMYEXERCISE,0.0);