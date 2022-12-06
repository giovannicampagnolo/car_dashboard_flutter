import 'package:flutter/material.dart';

class HmiDashboard extends StatelessWidget {
  const HmiDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        child: (size.width > 1184 && size.height > 604) ? Container() : const Center(child: Text("Screen is too small to UI"),) ,
      )
    );
  }
}
