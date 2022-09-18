import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/list_data/list_data_cubit.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    this.nav = true,
    this.height = 200,
    this.width = double.infinity,
    required this.imageLocation,
    this.fSize = 40,
    required this.pageTitle,
  });

  String imageLocation;
  double height;
  double width;
  double fSize;
  String pageTitle;
  bool nav;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (nav == true) {
          BlocProvider.of<ListDataCubit>(context).gitpageTitle(pageTitle);
          BlocProvider.of<ListDataCubit>(context).readJson();
          Navigator.pushNamed(
            context,
            "list_of_data",
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 50,
              color: Colors.grey.withOpacity(.1),
              spreadRadius: 20,
              offset: Offset(10, 10),
            ),
          ]),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(imageLocation) as ImageProvider,
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      pageTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fSize,
                        shadows: [
                          Shadow(
                            offset: Offset(3.0, 5.0),
                            blurRadius: 8,
                            color: Colors.black,
                          ),
                          Shadow(
                            offset: Offset(0.0, 5.0),
                            blurRadius: 10,
                            color: Colors.black,
                          ),
                          Shadow(
                            offset: Offset(0.0, 10.0),
                            blurRadius: 15,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
