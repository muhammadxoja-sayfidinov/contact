import 'package:flutter/material.dart';
class Contacts extends StatelessWidget {
  final String Name;
  final String Number;
  final String imageUrl;
  final String id;
  final Function delete;
  Contacts ({
    required this.id,
    required this.Name,
    required this.Number,
    required this.imageUrl,
    required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: Container(
            width: 80,
              height: 80,
              child: Image.network(imageUrl,fit: BoxFit.cover,)),
          title: Text(Name),
          subtitle: Text(Number),
          trailing: IconButton(
            icon: Icon(Icons.delete,color: Colors.red,size: 30,),
            onPressed: (){delete(id);}
          ),
        ),
      ),
    );
  }
}
