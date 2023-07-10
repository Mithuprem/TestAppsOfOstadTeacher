import 'package:flutter/material.dart';
import 'main.dart';

class TeamDetails extends StatelessWidget {
  final  BossOfOstad;

  const TeamDetails({Key? key, required this.BossOfOstad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(title: Text(BossOfOstad.name),),
        body: Column(
          children: [
            Image.network(BossOfOstad.ImageUrl),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              child: const Text('Honourable Teacher'),
              onPressed: () {
                MySnackBar("Thank you very much for the flutter apps development course arrange.I enjoyed every minute of your lecture as well as your marvelous sense of humor in Flutter world!",context);
              },
            ),
            Text(BossOfOstad.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
          ],
        ),
      ),
    );
  }
}


