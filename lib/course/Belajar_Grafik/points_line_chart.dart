/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Grafik/custom_circle_renderer.dart';
import 'package:intl/intl.dart';

class PointsLineChart extends StatefulWidget {
  @override
  _PointsLineChartState createState() => _PointsLineChartState();
}

class _PointsLineChartState extends State<PointsLineChart> {

  List<charts.Series<GraphData, DateTime>> _seriesList = [];
  List<charts.SeriesRendererConfig<DateTime>> _seriesRenderers = [];
  List<List<GraphData>> allData = [];
  Map<String, dynamic> colors = {
    'bloodPressure': charts.MaterialPalette.red.shadeDefault,
    'bmi': charts.MaterialPalette.blue.shadeDefault,
    'temperature': charts.MaterialPalette.green.shadeDefault,
    'pulseRate': charts.MaterialPalette.purple.shadeDefault
  };
  Graph _graph = Graph();
  double maxRange;
  final _dateFormatter = DateFormat('dd MMM');
  Map<String, dynamic> result = {
    'success': true, 
    'message': '', 
    'response': {
      'status': true, 
      'code': '200', 
      'list': [
        {
          'date': '20201104', 
          'avg': ['120', '80'], 
          'data': {
            'avg': ['120', '80'], 
            'max': ['120', '90'], 
            'min': ['120', '70'], 
            'details': [
              {
                'value': ['120', '80'], 
                'time': '20201101'
              }, 
              {
                'value': ['120', '90'], 
                'time': '20201102'
              }, 
              {
                'value': ['120', '70'], 
                'time': '20201103'
              },
              {
                'value': ['130', '50'], 
                'time': '20201104'
              }, 
              {
                'value': ['150', '60'], 
                'time': '20201105'
              }, 
              // {
              //   'value': ['150', '60'], 
              //   'time': '20201106'
              // }, 
              // {
              //   'value': ['150', '60'], 
              //   'time': '20201107'
              // }
            ]
          }
        }
      ], 
      'minAll': ['120', '70'], 
      'maxAll': ['120', '90'], 
      'avgAll': ['120', '80'], 
      'ideal': 120/80, 
      'maxRange': ['250', '190']
    }
  };

  @override
  void initState() {
    super.initState();
    _getTrendGraph();
  }

  _getTrendGraph() {
    List<dynamic> list = result['response']['list'];
    String date = list.last['date'];
    List<dynamic> details = list.last['data']['details'];
    List<GraphData> first = [];
    double f, s;
    double mf = _getDoubleValue(result['response']['maxRange'][0]);
    double ms = _getDoubleValue(result['response']['maxRange'][1]);
    maxRange = mf > ms ? mf : ms;

    for (var i = 0; i < details.length; i++) {
      f = _getDoubleValue(details[i]['value'][0]);
      s = _getDoubleValue(details[i]['value'][1]);

        first.add(
          GraphData(
            time: DateTime.parse(details[i]['time']),
            value: f
          )
        );

        first.add(
          GraphData(
            time: DateTime.parse(details[i]['time']),
            value: s
          )
        );


      allData.add([...first].toSet().toList());

      first.removeRange(0, 2);
    }

    // allData.addAll([first, second, third]);

    _buildLineValue(allData);
    _buildDotValue(allData);

    _graph = Graph(
      average: result['response']['avgAll'] is List
          ? result['response']['avgAll'].join('/')
          : result['response']['avgAll'].toString(),
      min: result['response']['minAll'] is List 
          ? result['response']['minAll'].join('/')
          : result['response']['minAll'].toString(),
      max: result['response']['maxAll'] is List 
          ? result['response']['maxAll'].join('/')
          : result['response']['maxAll'].toString(),
      ideal: result['response']['ideal'].toString(),
      maxRange: maxRange,
    );
  }

  double _getDoubleValue(value) {
    double doubleValue;
    if (value is double)
      doubleValue = value;
    else
      doubleValue = value is int ? value.toDouble() : double.parse(value);
    return doubleValue;
  }

  String _getValue(double value) {
    String strValue = value.toString();
    int intValue = value.toInt(); 
    if (intValue != null) {
      if (intValue == value) {
        strValue = intValue == 0 ? null : intValue.toString();
      }
    }
    return strValue;
  }

  String _getDate(String dateParams) {
    DateTime temp = DateTime.parse(dateParams);
    return _dateFormatter.format(temp);
  }

  void _buildLineValue(List<List<GraphData>> allData) {
    _seriesList = [];

    for (var i = 0; i < allData.length; i++) {
      _seriesList.add(charts.Series<GraphData, DateTime>( 
        id: 'value$i',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (GraphData value, _) => value.time,
        measureFn: (GraphData value, _) => value.value,
        data: allData[i],
      )..setAttribute(charts.rendererIdKey, 'value$i'));
      _seriesRenderers.add(
        charts.LineRendererConfig(
          customRendererId: 'value$i',
          includeArea: true,
          stacked: true
        )
      );
    }
  }

  void _buildDotValue(List<List<GraphData>> allData) {
    int i = 1;
    for (List<GraphData> data in allData) {
      for (GraphData item in data) {
        _seriesRenderers.add(
          charts.PointRendererConfig(
            symbolRenderer:
                CustomCircleSymbolRenderer(
                  text: _getValue(item.value)
                ),
            customRendererId: 'dotValue' + i.toString(),
            layoutPaintOrder: charts.LayoutViewPaintOrder.point + 1)
          );
        _seriesList.add(charts.Series<GraphData, DateTime>(
          id: 'dotValue' + i.toString(),
          colorFn: (GraphData value, _) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (GraphData value, _) => value.time,
          measureFn: (GraphData value, _) => value.value,
          data: [item],
        )..setAttribute(charts.rendererIdKey, 'dotValue' + i.toString()));
        i++;
      }
    }
  }

  Widget _buildGraph() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300.0,
      width: 400.0,
      child: charts.TimeSeriesChart(_seriesList,
          animate: false,
          defaultInteractions: false,
          primaryMeasureAxis: charts.NumericAxisSpec(
            viewport: charts.NumericExtents(0, _graph.maxRange),
            //tickProviderSpec: charts.BasicNumericTickProviderSpec(dataIsInWholeNumbers: true, desiredTickCount: 9)
          ),
          dateTimeFactory: const charts.LocalDateTimeFactory(),
          customSeriesRenderers: _seriesRenderers,
          /*defaultRenderer:
            charts.LineRendererConfig(includeArea: true, stacked: false),*/
          domainAxis: new charts.DateTimeAxisSpec(
              tickProviderSpec: charts.DayTickProviderSpec(
                  useMinute: false, increments: [1, 2, 3, 4, 5, 6, 7]),
          //     tickFormatterSpec: new charts.AutoDateTimeTickFormatterSpec(
          //         minute: new charts.TimeFormatterSpec(
          //             format: 'HH:mm', transitionFormat: 'HH:mm'))
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title : Text("Graph"),),
        body: _buildGraph()
      )
    );
  }
}

class GraphData {
  final DateTime time;
  final double value;
  GraphData({this.time, this.value});
}

class Graph {
  String average, min, max, ideal;
  double maxRange;
  Graph({this.average, this.max, this.min, this.maxRange, this.ideal});
}

/// Vital Sign data per Date
class VitalDate {
  bool isExpanded;

  /// Average value for this date
  String value;
  String date;

  /// Vital sign data per time in this date
  List<VitalDets> detail;

  /// Condition, only for blood pressure & pulse rate and blood sugar
  /// Refer to VitalParameter
  int condition;

  VitalDate({this.isExpanded = false, this.value, this.date, this.detail});
}

/// Vital sign data per time
class VitalDets {
  String id;
  String value, time;
  int condition;
  String conditionStr;
  VitalDets(
      {this.id, this.value, this.time, this.condition, this.conditionStr});
}