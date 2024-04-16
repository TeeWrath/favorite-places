import 'package:favorite_places/screens/add_place.dart';
import 'package:flutter/material.dart';

class YourPlacesScreen extends StatelessWidget {
  const YourPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void switchScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPlacesScreen(),));
    }

    Widget content = const Center(child: Text('No Places Added Yet', style: TextStyle(color: Colors.white),));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [IconButton(onPressed: switchScreen, icon: const Icon(Icons.add))],
      ),
    );
  }
}
