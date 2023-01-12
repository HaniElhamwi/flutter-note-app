import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": " 11 I have  lesson", "image": "1.png"},
    {"note": " 11 I have  lesson", "image": "1.png"},
    {"note": " 11 I have  lesson", "image": "1.png"},
    {"note": " 11 I have  lesson", "image": "1.png"},
    {"note": " 11 I have  lesson", "image": "1.png"},
  ];
  @overridex
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'addNote');
        },
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, i) {
              return Dismissible(
                  key: Key("$i"), child: ListNotes(notes: notes[i]));
            }),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;

  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              "images/1.png",
              fit: BoxFit.fill,
              height: 80,
            )),
        Expanded(
          flex: 3,
          child: ListTile(
            title: Text("title"),
            subtitle: Text("${notes['note']}"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ),
        )
      ],
    ));
  }
}
