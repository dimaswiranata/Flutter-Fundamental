import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:charts_flutter/src/text_element.dart' as element;
import 'package:charts_flutter/src/text_style.dart' as style;

/// Circle Symbol with Floating Text for Graph (charts_flutter) Data Annotations
class CustomCircleSymbolRenderer extends CircleSymbolRenderer {
  String text;
  CustomCircleSymbolRenderer({this.text});

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      Color fillColor,
      FillPatternType fillPattern,
      Color strokeColor,
      double strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);
    /*canvas.drawRect(
        Rectangle(bounds.left - 5, bounds.top - 20, bounds.width + 10,
            bounds.height + 5),
        fill: Color.white);*/
    var textStyle = style.TextStyle();
    textStyle.color = Color.black;
    textStyle.fontSize = 15;
    canvas.drawText(element.TextElement(text, style: textStyle, textScaleFactor: 1.0),
        (bounds.left - 10).round(), (bounds.top - 20).round());
  }
}
