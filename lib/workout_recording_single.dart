import 'package:flutter/material.dart';
import 'data_structures.dart';
class WorkoutRecordingSingle extends StatefulWidget {
  final Exercise ex;
  const WorkoutRecordingSingle({super.key, required this.ex});

  @override
  State<WorkoutRecordingSingle> createState() => _WorkoutRecordingSingleState();
}

class _WorkoutRecordingSingleState extends State<WorkoutRecordingSingle> {
  final _formKey = GlobalKey<FormState>();
  final _output  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          Text("${widget.ex.name}:"),
          Text("Target: ${widget.ex.target} ${widget.ex.measure} "),
          Form(
              key: _formKey,
              child: TextFormField(
                  decoration: InputDecoration(labelText:"How many ${widget.ex.measure}?"),
                  controller: _output
              )
          )
        ]
    );
  }
}
