import 'package:flutter/material.dart';
import 'data_structures.dart';

class WorkoutRecordingSingle extends StatefulWidget {
  final Exercise ex;
  final output;

  const WorkoutRecordingSingle({super.key, required this.ex, required this.output});

  @override
  State<WorkoutRecordingSingle> createState() => _WorkoutRecordingSingleState();
}

class _WorkoutRecordingSingleState extends State<WorkoutRecordingSingle> {
  final _formKey = GlobalKey<FormState>();

  Result ?_result;


  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formKey,
      child:Column(
        children:[
          TextFormField(
            decoration:InputDecoration(labelText:"How many ${widget.ex.measure.name}?"),
            controller:widget.output
          )
        ]
      )
    );
  }
  /*Widget build(BuildContext context) {
    return Row(
      children:[
        Column(
          children:[
            Text("${widget.ex.name}:"),
            Text("Target: ${widget.ex.target} ${widget.ex.measure.name} "),
          ]
        ),
        Form(
          key: _formKey,
          child: TextFormField(
            decoration: InputDecoration(labelText:"How many ${widget.ex.measure}?"),
            controller: _output,
            validator: (input) {
              if(input == null || input.isEmpty) {
                return 'No empties plz';
              }else if(double.tryParse(input)==null){
                return "Has to be a number plz";
              }
              return null;
            },
          )
        ),

      ]
    );
  }*/
}
