import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class MessengerChatHead extends StatefulWidget {
  const MessengerChatHead({Key? key}) : super(key: key);

  @override
  State<MessengerChatHead> createState() => _MessengerChatHeadState();
}

class _MessengerChatHeadState extends State<MessengerChatHead> {
  Color color = Colors.red;
  BoxShape shape = BoxShape.circle;

  @override
  void initState() {
    super.initState();
    // FlutterOverlayWindow.overlayListener.listen((event) {
    //   if (event == 'HEY') {}
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: GestureDetector(
        onTap: () async {
          print('here');
          // await FlutterOverlayWindow.closeOverlay();
          // FlutterOverlayWindow.disposeOverlayListener();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: color, shape: shape),
          child: const Center(
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
