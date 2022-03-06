
import 'package:contact/widget/contacts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MyHomePage(),
    );
  }
}

List<Map<String, String?>> users = [
  {
    'id':'1',
    'name': 'Akmal',
    'number':'+98 9552 9566 689 ' ,
    'imageUrl'
        :'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg',
 },
  {
    'id':'2',
    'name': 'Timur',
    'number':'+98 254 4583 755 ' ,
    'imageUrl'
       : 'https://avatars.mds.yandex.net/i?id=2a0000017a0ca8aef172bc27696bdb949ab0-3608991-images-thumbs&n=13' },
  {
    'id':'3',
    'name': 'Lola',
    'number':'+98 9552 6556 656 ' ,
    'imageUrl'
      : 'https://media.istockphoto.com/photos/risk-of-coronavirus-sick-black-woman-coughing-hard-at-home-picture-id1227312292?b=1&k=20&m=1227312292&s=612x612&w=0&h=aws_XlLMWM6mrYCwOMWnu1B2MyLtXwJz862Fqqdj-lo=' },
  {
    'id':'4',
    'name': 'Alisa',
    'number':'+98 9552 1321 556 ' ,
    'imageUrl'
        :'https://static.remove.bg/remove-bg-web/6cc620ebfb5922c21227f533a09d892abd65defa/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png',
  },
  {
    'id':'5',
    'name': 'Sui',
    'number':'+98 6534 7986 555 ' ,
    'imageUrl'
        :'https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=0hb44OrI',
  },
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void deleteUser(String userid){
    setState(() {
      users.removeWhere((user) {
        return user['id'] == userid;
      });
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(child: Text('Contact list',style: TextStyle(fontSize: 20),))
              ],
            ),
            Expanded(
              child: ListView(
                itemExtent: 90,
                children: users.map((user){
                  return Contacts(
                      id: user['id']!,
                      Name: user['name']!,
                      Number: user['number']!,
                      imageUrl: user['imageUrl']!,
                      delete: deleteUser,);

                }).toList()
              ),

            )
          ],
          
        ),
      ),
    );
  }
}

