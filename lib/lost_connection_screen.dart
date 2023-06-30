import 'package:flutter/material.dart';

import 'exit_dialog.dart';

class ConnectionLostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => exitDialog(context));
        return false;
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/noconn.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.12,
              left: MediaQuery.of(context).size.width * 0.065,
              child: Container(

              ),
            )
          ],
        ),
      ),
    );
  }
}
