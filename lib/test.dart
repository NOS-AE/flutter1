import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

typedef bool BoolCallback();

// ignore: missing_return
bool cb() => false;

void main() {
  test(cb);
}

void c({bool i = false, @Required('button') bool q, bool a, @required bool c}) {

}


void test(BoolCallback a) {
  try {
    print("hi");
  } on OutOfMemoryError catch(e) {
    e.stackTrace;
  }
  c(q: false, c: false);
  var say = (bool a, int b)=>{
    print(a),
    print(a),
    a
  };
  int b;
}