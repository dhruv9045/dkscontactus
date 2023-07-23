import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dkscontactus/dkscontactus.dart';

void main() {
  test('adds one to input values', () {
    final calculator = DksContactUs(
      isCircularIcon: true,
      email: 'dksdev.com@gmail.com',
      emailText: 'Send email',
      textStyle: TextStyle(),
      cardColor: Colors.black,
      dialogTextStyle: TextStyle(),
    );
  });
}
