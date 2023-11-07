

import 'package:flutter/material.dart';
import 'package:todo/dialog_box.dart';
import 'package:todo/todo_tile.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});
  @override
  State<Homepage> createState()=>_HomePageState();
}

class _HomePageState extends State<Homepage>{
  List toDoList=[
    ["Make Bed",false],
    ["Go to Gym",false],
  ];
//checkbox was tapped
void checkBoxChanged(bool? value, int index){
  setState(() {
    toDoList[index][1]= !toDoList[index][1];
  });
}
//create a new task
  void createNewTask(){
    showDialog(
      context: context,
      builder: (context){
      return DialogBox();
  },
    );
  }
  @override
    Widget build(BuildContext context){
   return Scaffold(
     backgroundColor: Colors.orange,
     appBar: AppBar(
       centerTitle: true,
       title: Text("TO DO"),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: createNewTask,
        backgroundColor: Colors.yellow,
       child: Icon(Icons.add),
     ),
     body: ListView.builder(
       itemCount: toDoList.length,
       itemBuilder: (context, index){
         return ToDoTile(
             taskName: toDoList[index][0],
             taskCompleted: toDoList[index][1],
             onChanged: (value)=> checkBoxChanged(value, index),
         );
       },
     ),

   );
  }
}