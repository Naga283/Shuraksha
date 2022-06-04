import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../new_page/new_page.dart';


///
/// Created By AURO (aurosmruti@smarttersstudio.com) on 12/7/2020 1:11 PM
///

class VoiceAssist extends StatefulWidget {
  @override
  _VoiceAssistState createState() => _VoiceAssistState();
}

class _VoiceAssistState extends State<VoiceAssist> {
  String _alanSdkKey = 'bda0ecdc686492426ecada2a9588e8782e956eca572e1d8b807a3e2338fdd0dc/stage';
  Color bgColor = Colors.white;

  @override
  void initState() {
    super.initState();
    initAlan();
  }

  initAlan() {
    AlanVoice.addButton(_alanSdkKey);
    AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }

  _handleCommand(Map<String, dynamic> response) {
    switch (response["command"]) {
      case "next_page":
        Get.to(NewPage());
        break;
      case "prev_page":
        Get.back();
        break;
      case "change_bg_color":
        setState(() {
          bgColor = Colors.yellow;
        });
        break;
      case "disable":
        AlanVoice.deactivate();
        break;
      default:
        print("no match found");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Women's Saftey"),
      ),
    );
  }
}
