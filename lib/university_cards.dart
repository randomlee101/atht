import 'package:atht_hire_test/category.dart';
import 'package:flutter/material.dart';

Widget universityCards({double? top, double? right, Function(DismissDirection e)? action}) {
  return PositionedDirectional(
    start: right,
    bottom: top,
    // end: 0,
    // left: right,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Container(
        height: 300,
        width: 360,
        child: Dismissible(
          key: UniqueKey(),
          onDismissed: action,
          child: Stack(
            children: [
              Image.asset("asset/images/sample_image.png",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover),
              Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        category("STEM"),
                        category("SCIENCE"),
                        category("SPORTS"),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "University of Cape Town",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Masters Scholarship",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.transparent])),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
