
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget exitDialog(context){
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Confirm'),
        const Divider(),
        SizedBox(
          height: 10,
        ),
        Text("Are you sure you want to exit?"),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              SystemNavigator.pop();
            }, child: Text('Yes')),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('No'))
          ],
        )
      ],
    ) );
}