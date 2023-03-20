import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:video_call/screen/HomeScreen.dart';



void main() {
  return runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}


/*
// late => 나중에 선언 함. 그렇기 때문에 null을 허용하지 않음.
late List<CameraDescription> _cameras;

Future<void> main() async {
  // 다른코드가 먼저 실행 돼야하면 꼭 제일 먼저 실행해 줘야 합니다.
  // flutter 앱이 실행할 준비가 되었는지 확인.
  WidgetsFlutterBinding.ensureInitialized();

  // 핸드폰 안의 카메라 가져오기.
  _cameras = await availableCameras();

  runApp(CameraApp());

}

class CameraApp extends StatefulWidget {
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {

  // Camera Controller.
  late CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  initializeCamera() async {
    try {
      // 첫번째 카메라 선택. ( ResolutionPreset => 해상도 )
      controller = CameraController(_cameras[0], ResolutionPreset.max);
      await controller.initialize();
      setState(() {});
    } catch (e) {
      if(e is CameraException) {
        switch(e.code) {
          case 'CameraAccessDenied' :
            print('user denied camera aceess');
            break;
          default:
            print('other error. I dont know');
            break;
        }
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 카메라가 초기화 되지 않았다면 Container return.
    if(!controller.value.isInitialized) {
      return Container();
    }

    return MaterialApp(
      home: CameraPreview(controller),
    );
  }
}
*/
