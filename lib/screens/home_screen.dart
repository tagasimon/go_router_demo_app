import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo_app/screens/about_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ll = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: ListTile(
                  title: Text("${ll[index]}"),
                  onTap: () {
                    context.goNamed(AboutScreen.routeName,
                        params: {"index": "${ll[index]}"});
                  },
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // GoRouter.of(context).go("/about");
          // GoRouter.of(context).go("about_screen");
          context.goNamed(AboutScreen.routeName, params: {"name": "SimonSayz"});
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
