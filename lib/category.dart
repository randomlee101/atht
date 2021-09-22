import 'package:flutter/material.dart';

Widget category (String? cat)
{
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.only(left: 8),
    decoration: BoxDecoration(
      color: Colors.pink.shade300,
      borderRadius: BorderRadius.all(Radius.circular(4))
    ),
    child: Center(child: Text(cat!),),
  );
}