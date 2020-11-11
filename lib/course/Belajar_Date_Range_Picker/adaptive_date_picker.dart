import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

typedef ValueChanged<DateTime> = void Function(DateTime value);

class AdaptiveDatePicker {
  static Future<DateTime> show(
      {BuildContext context,
      Locale locale,
      DateTime initialDate,
      DateTime firstDate,
      DateTime lastDate}) async {
    DateTime picked;
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      await showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 216.0,
            padding: EdgeInsets.only(top: 6.0),
            color: CupertinoColors.white,
            child: DefaultTextStyle(
              style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 22.0,
              ),
              child: GestureDetector(
                // Blocks taps from propagating to the modal sheet and popping.
                onTap: () {},
                child: SafeArea(
                  top: false,
                  child: CupertinoDatePicker(
                    use24hFormat: true,
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: initialDate,
                    minimumDate: firstDate,
                    maximumDate: lastDate,
                    onDateTimeChanged: (value) {
                      picked = value;
                    },
                  ),
                ),
              ),
            ),
          );
        },
      );
      return picked;
    } else {
      // Android or Fuschia
      picked = await showDatePicker(
          context: context,
          locale: locale,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate);
      return picked;
    }
  }
}
