import 'package:flutter/material.dart';
abstract class BaseModel<T> {
  Map<dynamic, dynamic> toJson();
  T fromJson(Map<dynamic, dynamic> json);
}
