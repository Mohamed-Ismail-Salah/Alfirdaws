import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';

class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;

  const LocationErrorWidget({Key? key, this.error, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const box = SizedBox(height: 32);
    final errorColor =  ColorManager.errorColor;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.location_off,
            size: 150,
            color: errorColor,
          ),
          box,
          Text(
            error!,
            style: TextStyle(color: errorColor, fontWeight: FontWeight.bold),
          ),
          box,
          TextButton(
            child: const Text("Retry"),
            onPressed: () {
              if (callback != null) callback!();
            },
          )
        ],
      ),
    );
  }
}
