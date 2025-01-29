import 'package:flutter/material.dart';
import 'package:homework_1/construction_communication_storage.dart';
import 'package:provider/provider.dart';
import 'data_structures.dart';
import 'workout_recording_single.dart';
import 'workout_storage.dart';

class WorkoutRecordingPage extends StatefulWidget {
  const WorkoutRecordingPage({super.key,required this.plan});
  final WorkoutPlan plan;


  @override
  State<WorkoutRecordingPage> createState() => _WorkoutRecordingPageState();
}

class _WorkoutRecordingPageState extends State<WorkoutRecordingPage> {
  final _formKey = GlobalKey<FormState>();
  List<Widget> getRecordingSingleWidget({required WorkoutPlan theList}){
    List<Widget> output=List<Widget>.empty(growable:true);
    if(theList.collection.isEmpty){
      output.add(WorkoutRecordingSingle(ex: DUMMYEXERCISE));
    }
    for(int i=0;i<theList.collection.length;i++){
      output.add(WorkoutRecordingSingle(ex: theList.collection[i]));
    }
    return output;
  }



  @override
  Widget build(BuildContext context) {
    final WorkoutStorage store = context.read<WorkoutStorage>();
    return Scaffold(
      appBar: AppBar(),
      body:SafeArea(
        child:Form(
          key:_formKey,
          child:ListView(
            children:[
              Text(widget.plan.name),
              ...getRecordingSingleWidget(theList:widget.plan),
              ElevatedButton(onPressed:(){
                if(_formKey.currentState!.validate()){
                  Workout temp=context.read<ConstructionCommunicationStorage>().createWorkout(DateTime.now());
                  context.read<WorkoutStorage>().addWorkout(temp);
                  Navigator.pop(context);
                } else {
                  context.read<ConstructionCommunicationStorage>().WipeStorage();
                }
              }, child: Text("validate yo"))
            ]
          )
        )
      )
    );
  }
}
