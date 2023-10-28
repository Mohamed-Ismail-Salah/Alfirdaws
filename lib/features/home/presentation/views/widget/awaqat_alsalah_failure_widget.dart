import 'package:flutter/material.dart';



class AwaqatAlsalahFailureWidget extends StatelessWidget {
  const AwaqatAlsalahFailureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.signal_wifi_off,
          size: 100,
          color: Colors.grey,
        ),
        Text(
          "No Internet Connection",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        Text(
          "Please check your internet connection and try again.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    )

    ]);
  }
}

