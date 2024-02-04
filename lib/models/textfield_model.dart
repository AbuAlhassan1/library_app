import 'package:flutter/material.dart';

abstract class FieldDataObject {
  bool validate({String? err});
}

class TextFieldDataObject implements FieldDataObject {
  late String name;
  late String? lable;
  late String? hint;
  late String? error;
  late RegExp? regex;
  late TextEditingController controller;
  late GlobalKey key;
  late FocusNode focusNode;

  TextFieldDataObject({
    required this.name,
    required this.controller,
    required this.focusNode,
    required this.key,
    this.lable,
    this.error,
    this.hint,
    this.regex,
  });

  @override
  bool validate({String? err}) {
    if(controller.text.isEmpty){
      error = "لايمكنك ترك الحقل فارغ!";
      return false;
    } else if ( regex != null ){
      bool isValid = regex!.hasMatch(controller.text);

      if(isValid){
        error = null;
        return true;
      }
      error = err;
      return false;
    }else {
      error = null;
      return true;
    }
  }

  void reset() {
    controller.clear();
    error = null;
  }
}