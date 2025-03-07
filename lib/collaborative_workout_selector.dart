import 'package:flutter/material.dart';
import 'package:homework_1/workout_list_selector.dart';
import 'package:provider/provider.dart';

import 'workout_storage.dart';


class CollaborativeWorkoutSelector extends StatefulWidget {
  const CollaborativeWorkoutSelector({super.key});

  @override
  State<CollaborativeWorkoutSelector> createState() => _CollaborativeWorkoutSelectorState();
}

class _CollaborativeWorkoutSelectorState extends State<CollaborativeWorkoutSelector> {
  final _formKey = GlobalKey<FormState>();
  final line=TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("dope");
    context.read<WorkoutStorage>().forceUseFB();
    print("not dope");
    context.read<WorkoutStorage>().forceCollab();
    return Scaffold(
      body:Form(
        key:_formKey,
        child:Column(
          children:[
            TextFormField(
              controller:line,
              validator:(input){
                if(input == null || input.isEmpty) {
                  return 'No empties plz';
                }
              }
            ),
            ElevatedButton(
              onPressed:(){
                if(_formKey.currentState!.validate()){
                  context.read<WorkoutStorage>().currentName=line.text;
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return WorkoutListSelector();
                  }));
                }
              },
              child:Text("Name???")
            )
          ]
        )

      )
    );
  }
}
