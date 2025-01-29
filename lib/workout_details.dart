import 'package:flutter/material.dart';
import 'package:homework_1/workout_recording_page.dart';
import 'data_structures.dart';
import 'result_details.dart';

class WorkoutDetails extends StatelessWidget {
  final Workout workout;
  const WorkoutDetails({super.key, required this.workout});
  List<Widget> getResultWidget(List<Result> theList){
    List<Widget> output=List<Widget>.empty(growable:true);
    if(theList.isEmpty){
      output.add(ResultDetails(result: DUMMYRESULT));
    }
    for(int i=0;i<theList.length;i++){
      output.add(ResultDetails(result: theList[i]));
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title:Text("${workout.collection.length} exercises done on ${workout.date.month}/${workout.date.day}/${workout.date.year}"),
      children:[
        Column(
          children: getResultWidget(workout.collection)
        )
      ]
    );
  }
}
