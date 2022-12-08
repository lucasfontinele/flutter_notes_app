import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({super.key});

  @override
  CreateNoteState createState() => CreateNoteState();
}

class CreateNoteState extends State<CreateNotePage> {
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Create note"),
            centerTitle: true,
            actions: [
              // IconButton(
              //  onPressed: () {},
              //  icon: const Icon(Icons.arrow_back),
              // ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
              )
            ]),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    maxLines: 10,
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                  ),
                  if (description.isNotEmpty)
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, description);
                        },
                        child: const Text("Salvar"))
                ])));
  }
}
