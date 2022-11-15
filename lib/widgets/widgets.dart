import 'package:flutter/material.dart';

const TextInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF9575CD), width: 2)),
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
  errorBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2)),
);
