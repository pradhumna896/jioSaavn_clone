import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AudioDetailPage extends StatefulWidget {
  const AudioDetailPage({super.key});

  @override
  State<AudioDetailPage> createState() => _AudioDetailPageState();
}

class _AudioDetailPageState extends State<AudioDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            
          },
          icon:Icon(Icons.close,color:Colors.black)),
      actions: [IconButton(
        onPressed:() {
          
        },
        icon:Icon(Icons.menu,color:Colors.black))],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}