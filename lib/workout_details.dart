import 'package:flutter/material.dart';
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
    return Scaffold(
        body: SafeArea(
            child: Column(
                children:[
                  Text("${workout.collection.length} results in this workout"),
                  Text("Done on ${workout.date.month}/${workout.date.day}/${workout.date.year}"),
                  Column(
                    children: getResultWidget(workout.collection)
                  )
                ]
            )
        )
    );
  }
}
