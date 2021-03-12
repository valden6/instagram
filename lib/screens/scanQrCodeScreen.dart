import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/animations/fadeRoute.dart';
import 'package:instagram/screens/yourQrCodeScreen.dart';

class ScanQrCodeScreen extends StatefulWidget {
  @override
  _ScanQrCodeScreenState createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State {

  CameraController controller;
  List cameras;
  int selectedCameraIndex;
  String imgPath;

  @override
  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {

      cameras = availableCameras;

      if (cameras.length > 0) {
        setState(() {
          selectedCameraIndex = 0;
        });
        _initCameraController(cameras[selectedCameraIndex]).then((void v) {});
      } else {
        print('No camera available');
      }
    }).catchError((err) {
      print('Error :${err.code}Error message : ${err.message}');
    });
  }

  Future _initCameraController(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if(cameras == null || cameras.length == 0){
      return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
          ),
          child: Stack(
            children: [
              Center(
                child: Text("No camera available !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
              ),
              Positioned(
                bottom: 50,
                right: MediaQuery.of(context).size.width/2 - 85,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, FadeRoute(page: YourQrCodeScreen())),
                  child: Container(
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.qrcode,color: Colors.white,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Text("Go to your QR code",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17))
                      ]
                    )
                  ),
                )
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                top: 60,
                left: 10,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: FaIcon(FontAwesomeIcons.times,color: Colors.white, size: 35),
                        )
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: FittedBox()
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white,width:3)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/post-content-2.jpg",fit: BoxFit.fill)
                          )
                        )
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
        ),
        child: Stack(
          children: [
            _cameraPreviewWidget(),
            Positioned(
              bottom: 50,
              right: MediaQuery.of(context).size.width/2 - 85,
              child: GestureDetector(
                onTap: () => Navigator.push(context, FadeRoute(page: YourQrCodeScreen())),
                child: Container(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.qrcode,color: Colors.white,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text("Go to your QR code",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17))
                    ]
                  )
                ),
              )
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: 60,
              left: 10,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: FaIcon(FontAwesomeIcons.times,color: Colors.white, size: 35),
                      )
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: FittedBox()
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white,width:3)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/post-content-2.jpg",fit: BoxFit.fill)
                        )
                      )
                    )
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }

  /// Display Camera preview.
  Widget _cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return const Text('Loading',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w900));
    }
    return GestureDetector(
      onDoubleTap: _onSwitchCamera,
      child: CameraPreview(controller)
    );
  }

  void _showCameraException(CameraException e) {
    String errorText = 'Error:${e.code}\nError message : ${e.description}';
    print(errorText);
  }

  void _onCapturePressed(context) async {
    try {
      final image = await controller.takePicture();
      // Navigator.push(context,MaterialPageRoute(builder: (context) => PreviewScreen(imgPath: image.path)));
    } catch (e) {
      _showCameraException(e);
    }
  }

  void _onSwitchCamera() {
    selectedCameraIndex = selectedCameraIndex < cameras.length - 1 ? selectedCameraIndex + 1 : 0;
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    _initCameraController(selectedCamera);
  }
}