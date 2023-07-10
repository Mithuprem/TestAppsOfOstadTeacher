import 'package:flutter/material.dart';
import 'BossOfOstad.dart';
import 'TeamDetails.dart';
import 'ResponsivePage.dart';
import 'ToDoPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rabbil World!',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
  );
}

late final ScrollBehavior? scrollBehavior;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> bossname =['Rabbil Hasan','Hasin Hayder','Rafat Meraz','Saiaf Anan','Sohanul Habib','Niaz Ahmed','Farah Samia'];

  static List url = [
    'https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png',
    'https://cdn.ostad.app//user/avatar/638dc11391cbb43930e05dd1',
    'https://avatars.githubusercontent.com/u/25007125?v=4',
    'https://avatars.githubusercontent.com/u/47169507?v=4',
    'https://cdn.ostad.app//user/avatar/637cf4781310c3aa505012d2',
    'https://cdn.ostad.app//user/avatar/63971074811cffad6a500970',
    'https://cdn.ostad.app//user/avatar/633de9108d4d4688ac25d73d'];


  final List<BossOfOstad> OstadTeam = List.generate(bossname.length, (index) => BossOfOstad('${bossname[index]}','${url[index]}','${bossname[index]} আমাদের প্রিয় শিক্ষক, শিক্ষক মানে শিক্ষা গুরু মানুষ গড়ার কারিগর, আলোকিত করে তোলে শিক্ষার্থীদের অন্তর। শিক্ষক মানে মহান অতি চরিত্রে আর জ্ঞানে-গুণে, শিক্ষা দিয়ে আলো দিয়ে মনুষ্যত্বের বীজ দেয় বুনে। শিক্ষক মানে ক্রান্তিকালে জাতির সেরা কান্ডারি, দুর্বিপাকে আঁধার বেলায় শিক্ষক আলোর দিশারি। শিক্ষকের মর্যাদা হোক সর্বত্র সবখানে, শিক্ষকরা রয়ে যাক জাতির শ্রদ্ধার আসনে। অসংখ্য ধন্যবাদ ও কৃতজ্ঞতা। '),);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
          backgroundColor: Colors.orangeAccent[100],
          appBar: AppBar(title: const Center(child: Text('https://ostad.app এ আমাদের প্রিয় শিক্ষক ')),),
          body: ListView.builder(
              itemCount: OstadTeam.length,
              itemBuilder: (context,index){
                return Card(
                  color : Colors.lightGreen[600],
                  child: ListTile(
                    title: Text(OstadTeam[index].name),
                    leading: SizedBox(
                      width: 80,
                      height: 90,
                      child: Image.network(OstadTeam[index].ImageUrl),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TeamDetails(BossOfOstad: OstadTeam[index],)));
                    },
                  ),
                );
              }
          )
      ),
    );
  }
}

