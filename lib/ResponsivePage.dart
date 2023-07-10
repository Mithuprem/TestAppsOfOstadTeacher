import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Screen'),),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 800) {
              return Container(
                height: 400, width: 400, color: Colors.lightBlue,);
            } else {
              return Container(
                height: 350, width: 400, color: Colors.teal,);
            }
          }
      ),
    );
  }
}






