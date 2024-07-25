import 'package:flutter/material.dart';
class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HiScreen()),
            );
          },
          child: Text('Go to Hi Screen'),
        ),
      ),
    );
  }
}

class HiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi Screen'),
      ),
      body: Center(
        child: Text(
          'Hi',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}