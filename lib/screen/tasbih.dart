import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tasbih extends StatefulWidget {
  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  int count = 0;
  Icon repeat = Icon(Icons.repeat, );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
      child: Column(
        children: [
          Center(
              child: Card(
                elevation: 20,
                color: Colors.brown.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "عددالتسبيحات",
                        style: TextStyle(fontSize: 40, color: Colors.brown),
                      ),
                    ), SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "$count ",
                        style: TextStyle(fontSize: 90, color: Colors.brown),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:250,bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          icon: repeat,color: Colors.white,
                          onPressed: () {
                            count = 0;
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),)),



          SizedBox(
            height: 150,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.brown,
              fixedSize: Size(170, 50),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              'سبح',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {
              count++;
              setState(() {});
            },
          ),
          SizedBox(
            height: 30,
          ),

        ],
      ),
    );
  }
}
