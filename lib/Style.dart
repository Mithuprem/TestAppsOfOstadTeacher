import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label){
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 30),
      border: OutlineInputBorder(),
      labelText: label
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      backgroundColor: Colors.purple,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      )
  );
}

SizedBox SizeBox50(child){
  return SizedBox(
    height: 60,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      color: Colors.greenAccent,
      child:child ,
    ),
  );

}