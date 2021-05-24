import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CamScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  CamScreen({this.cameras});

  @override
  _CamScreenState createState() {
    return new _CamScreenState();
  }
}

class _CamScreenState extends State<CamScreen> {
  CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){
      return new Container();
    }
    return new AspectRatio(aspectRatio: controller.value.aspectRatio,
    child: new CameraPreview(controller),);
  }
}
