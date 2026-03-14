import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(title: 'Flutter Tutorial', home: TutorialHome()));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null, 
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          ),
          title: const Text('Example Title'),
          actions: const [
            IconButton(
              onPressed: null, 
              icon: Icon(Icons.search),
              tooltip: 'Search',),
          ],
      ),
        body: const Center(child: Text('Hello World!')),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          tooltip: 'Add',
          child: Icon(Icons.add),
        ),
    );
  }
}
