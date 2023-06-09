import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

import 'authentication/presentation/Widget/constant.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Flushbar(
                maxWidth: 344,
                //margin: EdgeInsets.all(12),
                padding: const EdgeInsets.only(top: 13, bottom: 13),
                borderRadius: BorderRadius.circular(8),
                flushbarPosition: FlushbarPosition.TOP,
                reverseAnimationCurve: Curves.decelerate,
                backgroundColor: flushColor,

                icon: const Icon(Icons.message_rounded),
                //title: "Error",
                //titleColor: Colors.black,
                //titleSize: 24,
                message: "Message", // state.message,
                messageColor: Colors.white,
                messageSize: 14,

                duration: const Duration(seconds: 15),
                //  title:"Error",
              ).show(context);
              Text("Hello");
            },
            child: Text("Button"),
          )
        ],
      ),
    ));
  }
}
