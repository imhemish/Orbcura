import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:developer';

import 'package:flutter_gemini/flutter_gemini.dart'; // Assuming you have a Gemini package

class SmartCam extends StatefulWidget {
  const SmartCam({super.key});

  @override
  State<SmartCam> createState() => _SmartCamState();
}

class _SmartCamState extends State<SmartCam> {
  @override
  void initState() {
    super.initState();
    processImageWithGemini();
  }

  void processImageWithGemini() {
    final gemini = Gemini.instance;

    // Load the image from the assets directory
    final file = File('assets/bhim.png');
    
    gemini.textAndImage(
      text: "What is this picture?", // Text to accompany the image
      images: [file.readAsBytesSync()], // List of images in bytes format
    ).then((value) {
      // Handle the response from the Gemini API
      log(value?.content?.parts?.last.text ?? '');
    }).catchError((e) {
      // Handle any errors that occur during the API call
      log('textAndImageInput', error: e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SmartCam'),
      ),
      body: Center(
        child: Text('Processing Image...'),
      ),
    );
  }
}
