import 'package:flutter/material.dart';

class BuildCircleProgress extends StatelessWidget {
  const BuildCircleProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Color(0xff957DAD),
      ),
    );
  }
}
