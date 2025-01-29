import 'package:flutter/material.dart';
import 'package:homework_1/construction_communication_storage.dart';
import 'data_structures.dart';
import 'package:provider/provider.dart';

class WorkoutRecordingSingle extends StatefulWidget {
  final Exercise ex;

  const WorkoutRecordingSingle({super.key, required this.ex});

  @override
  State<WorkoutRecordingSingle> createState() => _WorkoutRecordingSingleState();
}

class _WorkoutRecordingSingleState extends State<WorkoutRecordingSingle> {

  final line=TextEditingController();
  Result ?_result;


  @override
  Widget build(BuildContext context) {
    return Container(
      height:55,
      child:TextFormField(
        decoration:InputDecoration(labelText:"How many ${widget.ex.measure.name} for the ${widget.ex.name}, out of ${widget.ex.target}?"),
        controller:line,
        validator: (input) {
          if(input == null || input.isEmpty) {
            return 'No empties plz';
          }else if(double.tryParse(input)==null){
            return "Has to be a number plz";
          }
          context.read<ConstructionCommunicationStorage>().AddResult(
              Result(widget.ex,double.tryParse(input)!/widget.ex.target)
          );
          return null;
        },
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
