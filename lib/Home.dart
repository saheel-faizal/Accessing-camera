import 'package:cam/CamScreen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  HomeScreen({this.cameras});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(child: IconButton(icon: Icon(Icons.camera_alt),
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CamScreen(cameras:widget.cameras)));
        },
      ),),),
    );
  }
}
