import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "about";
  final int index;
  const AboutScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fam = [
      {"name": "Phil", "number": "1", "age": "20", "sex": "M"},
      {"name": "Rose", "number": "2", "age": "19", "sex": "F"},
      {"name": "Tomaso", "number": "3", "age": "18", "sex": "M"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("About $index"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Text("back"),
          ),
          index > fam.length
              ? const Text("ERROR")
              : ListTile(
                  title: Text("${fam[index - 1]["name"]}"),
                )
        ],
      ),
    );
  }
}
