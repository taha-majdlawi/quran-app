import 'dart:async';

import 'package:flutter/material.dart';

class ShowTimeWidget extends StatefulWidget {
  const ShowTimeWidget({super.key});

  @override
  State<ShowTimeWidget> createState() => _ShowTimeWidgetState();
}

class _ShowTimeWidgetState extends State<ShowTimeWidget> {
   String _currentTime = "";
  @override
  void initState() {
    super.initState();
    // Update the time every second
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now()
            .toString()
            .split('.')[0]; // Get current time in 'yyyy-MM-dd HH:mm:ss' format
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Text(
          'الوقت الان',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "Lalezar",
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            _currentTime,
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Lalezar",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
       
      ],
    );
  }
}
