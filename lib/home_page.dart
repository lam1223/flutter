import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 0;

  void addValue() {
    setState(() {
      value++;
    });
  }

  void removeValue() {
    setState(() {
      if (value > 0) {
        value--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text('My App'),
        backgroundColor: Colors.lightBlueAccent,
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            const Text(
              'Value',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    removeValue();
                  },
                  child: Text(
                    'Remove',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  '$value',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    addValue();
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
