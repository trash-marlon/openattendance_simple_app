import 'package:flutter/material.dart';

class ConfigScreen extends StatelessWidget {
   
  const ConfigScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
         child: Text('Config Screen'),
      ),
    );
  }
}