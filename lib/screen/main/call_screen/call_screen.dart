import 'package:flutter/material.dart';
import 'package:learning_app/models/instructor.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatelessWidget {
  static const routeName = '/call_screen';

  final Instructor instructor;

  const CallScreen({Key? key, required this.instructor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 000000000, // Your zego app ID here
      appSign: '', // Your zego app sign here
      userID: instructor.id.toString(),
      userName: instructor.name,
      callID: 'my_video_call',
      config: ZegoUIKitPrebuiltCallConfig(),
    );
  }
}
