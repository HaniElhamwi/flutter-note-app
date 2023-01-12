import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add  Note"),
        ),
        body: Container(
            child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Note Title",
                        prefixIcon: Icon(Icons.note)),
                  ),
                  TextFormField(
                    minLines: 1,
                    maxLength: 200,
                    maxLines: 3,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Note description",
                        prefixIcon: Icon(Icons.description)),
                  ),
                  RaisedButton(
                    onPressed: () {
                      showButtonSheet();
                    },
                    child: Text("Add image for note"),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                    ),
                    child: Text(
                      "Add Note",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    textColor: Colors.white,
                  )
                ],
              ),
            )
          ],
        )));
  }

  showButtonSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "please choose Image",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Icon(
                          Icons.photo_album_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "From Gallery",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        )
                      ])),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Icon(
                          Icons.camera,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "From Camera",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        )
                      ])),
                ),
              ],
            ),
          );
        });
  }
}
