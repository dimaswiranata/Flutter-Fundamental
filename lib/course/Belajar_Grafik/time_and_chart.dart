import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Grafik/custom_circle_renderer.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_range_picker/date_range_picker.dart' as dateRangePicker;

class DummyWidget extends StatelessWidget {
  final bool changeAgain;
  DummyWidget({this.changeAgain});
  @override
  Widget build(BuildContext context) => TimeAndChart(changeToWeekly: !changeAgain);
}

class TimeAndChart extends StatefulWidget {
  final bool changeToWeekly;
  TimeAndChart({this.changeToWeekly});
  @override
  _TimeAndChartState createState() => _TimeAndChartState();
}

class _TimeAndChartState extends State<TimeAndChart> {
  List<charts.Series<GraphData, DateTime>> seriesList = [];
  List<GraphData> first;
  List<List<GraphData>> allData = [];
  Map<String, dynamic> colors = {
    'bloodPressure': charts.MaterialPalette.red.shadeDefault,
    'bmi': charts.MaterialPalette.blue.shadeDefault,
    'temperature': charts.MaterialPalette.green.shadeDefault,
    'pulseRate': charts.MaterialPalette.purple.shadeDefault
  };
  Graph graph = Graph();
  List<dynamic> list;
  double maxRange;
  final dateFormatter = DateFormat('dd MMM');
  DateTime fromDate, toDate;
  final strFormatter = DateFormat('yyyyMMdd');
  String strToDate, strFromDate, strChooseDate;
  bool week = false;
  Map<String, dynamic> result = {
    'success': true, 
    'message': '', 
    'response': {
      'status': true, 
      'code': '200', 
      'list': [
        {
          'date': '20201111', 
          'avg': ['120', '80'], 
          'data': {
            'avg': ['120', '80'], 
            'max': ['120', '90'], 
            'min': ['120', '70'], 
            'details': [
              {
                'value': ['100', '80'], 
                'time': '210018'
              }, 
              {
                'value': ['120', '90'], 
                'time': '220018'
              }, 
            ]
          }
        },
		    {
          'date': '20201110', 
          'avg': ['120', '80'], 
          'data': {
            'avg': ['120', '80'], 
            'max': ['120', '90'], 
            'min': ['120', '70'], 
            'details': [
              {
                'value': ['120', '80'], 
                'time': '210018'
              }, 
              {
                'value': ['120', '70'], 
                'time': '220018'
              }, 
            ]
          }
        },
		    {
          'date': '20201109', 
          'avg': ['120', '80'], 
          'data': {
            'avg': ['120', '80'], 
            'max': ['120', '90'], 
            'min': ['120', '70'], 
            'details': [
              {
                'value': ['120', '80'], 
                'time': '210018'
              }, 
              {
                'value': ['120', '60'], 
                'time': '220018'
              }, 
            ]
          }
        },
		    {
          'date': '20201108', 
          'avg': ['120', '80'], 
          'data': {
            'avg': ['120', '80'], 
            'max': ['120', '90'], 
            'min': ['120', '70'], 
            'details': [
              {
                'value': ['120', '80'], 
                'time': '210018'
              }, 
              {
                'value': ['120', '90'], 
                'time': '220018'
              }, 
            ]
          }
        },
		    {
          'date': '20201107', 
          'avg': ['120', '80'], 
          'data': {
            'avg': ['120', '80'], 
            'max': ['120', '90'], 
            'min': ['120', '70'], 
            'details': [
              {
                'value': ['120', '80'], 
                'time': '210018'
              }, 
              {
                'value': ['120', '60'], 
                'time': '220018'
              }, 
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
    fromDate = DateTime.now().subtract(Duration(days: 4)); //todo: DateTime fromDate diassign 7 hari DateTime.now
    toDate = DateTime.now(); //todo: toDate diassign DateTime.now (DateTime => tanggal dan waktu hari ini)
    strToDate = _getDate(toDate);
    strFromDate = _getDate(fromDate);
    _getTrendGraph();
  }

  _getTrendGraph(){
    setState(() {
      strChooseDate = _getChooseDate(toDate);
    });

    setState(() {
      list = result['response']['list'];
    });

    setState(() {
      week = widget.changeToWeekly == null ? false : widget.changeToWeekly;
    });

    if(week){
      print("Weekly terpilih");
      _getDataWeekly(list);
    } else {
      print("Daily terpilih");
      _getDataDaily(list);
    }

    double mf = _getDoubleValue(result['response']['maxRange'][0]);
    double ms = _getDoubleValue(result['response']['maxRange'][1]);

    setState(() {
      maxRange = mf > ms ? mf : ms;
    });

    setState(() {
      graph = Graph(
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
    });

    print("graph : ");
    print(graph);
    print("-----------------------------------------------");
  }

  _getDataWeekly(List<dynamic> list){
    print(list);

    setState(() {
      first = [];
    });
    double f, s;

    setState(() {
      allData = [];
    });
        
    for (var i = 0; i < list.length; i++) {
      f = _getDoubleValue(list[i]['avg'][0]);
      s = _getDoubleValue(list[i]['avg'][1]);
      print('run _getDataWeekly() ke $i');

      first.add(
        GraphData(
          time: DateTime.parse(list[i]['date']),
          value: f
        )
      );

      first.add(
        GraphData(
          time: DateTime.parse(list[i]['date']),
          value: s
        )
      );

      setState(() {
        allData.add([...first].toSet().toList());
      });

      first.removeRange(0, 2);
    }

    print("allData : ");
    print(allData);
    _buildLineValue(allData);
    _buildDotValue(allData);
  }

  _getDataDaily(List<dynamic> list){
    print(list);
    String date;
    List<dynamic> details;
    String dates;
    double f, s;

    for (var i = 0; i < list.length; i++){
      dates = list[i]['date'];
      if(dates == strChooseDate){
        print(dates);
        print(strChooseDate);
        print('terpilih');
        date = dates;
        details = list[i]['data']['details'];
        print(details);
      }
    }

    setState(() {
      first = [];
    });

    for (var i = 0; i < details.length; i++) {
      f = _getDoubleValue(details[i]['value'][0]);
      s = _getDoubleValue(details[i]['value'][1]);

      first.add(
        GraphData(
          time: DateTime.parse(date + ' ' + details[i]['time']),
          value: f
        )
      );

      first.add(
        GraphData(
          time: DateTime.parse(date + ' ' + details[i]['time']),
          value: s
        )
      );

      allData.add([...first].toSet().toList());

      first.removeRange(0, 2);
    }

    print("allData : ");
    print(allData);
    _buildLineValue(allData);
    _buildDotValue(allData);
  }

  void _reset() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => DummyWidget(changeAgain: week),
      ),
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

  String _getDate(DateTime dateParams) {
    String temp = dateFormatter.format(dateParams);
    return temp;
  }

  String _getChooseDate(DateTime dateParams) {
    String temp = strFormatter.format(dateParams);
    return temp;
  }

  List<charts.SeriesRendererConfig<DateTime>> seriesRenderers = [];

  void _buildLineValue(List<List<GraphData>> allData) {

    setState(() {
      seriesList = [];
      seriesRenderers = [];
    });

    print(seriesList);
    print(seriesRenderers);

    for (var i = 0; i < allData.length; i++) {
      print('run _buildLineValue() ke $i');
      setState((){
        seriesList.add(charts.Series<GraphData, DateTime>( 
          id: 'value$i',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (GraphData value, _) => value.time,
          measureFn: (GraphData value, _) => value.value,
          data: allData[i],
        )..setAttribute(charts.rendererIdKey, 'value$i'));
      });
      setState((){
        seriesRenderers.add(
          charts.LineRendererConfig(
            customRendererId: 'value$i',
            includeArea: true,
            stacked: true
          )
        );
      });
    }

    print("seriesList dari _buildLineValue()");
    print(seriesList);
    print(seriesList.length);

    print("seriesRenderers dari _buildLineValue()");
    print(seriesRenderers);
    print(seriesRenderers.length);
  }

  void _buildDotValue(List<List<GraphData>> allData) {
    print(seriesList);
    print(seriesRenderers);

    int i = 1;
    for (List<GraphData> data in allData) {
      print('run _buildDotValue() ke $i');
      for (GraphData item in data) {
        print('allData  ${item.value}');
        print('allData  ${item.time}');
        print('----------------------------------------');
        setState(() {
          seriesRenderers.add(
            charts.PointRendererConfig(
              symbolRenderer:
                  CustomCircleSymbolRenderer(
                    text: _getValue(item.value)
                  ),
              customRendererId: 'dotValue' + i.toString(),
              layoutPaintOrder: charts.LayoutViewPaintOrder.point + 1)
          );
        });
        setState(() {
          seriesList.add(charts.Series<GraphData, DateTime>(
            id: 'dotValue' + i.toString(),
            colorFn: (GraphData value, _) => charts.MaterialPalette.blue.shadeDefault,
            domainFn: (GraphData value, _) => value.time,
            measureFn: (GraphData value, _) => value.value,
            data: [item],
          )..setAttribute(charts.rendererIdKey, 'dotValue' + i.toString()));
        });
        i++;
      }
    }

    print("seriesList dari _buildDotValue()");
    print(seriesList);

    print("seriesRenderers dari _buildDotValue()");
    print(seriesRenderers);
  }

  void _showDateRangePicker() async {
    DateTime today = DateTime.now(); //todo: DateTime today diassign DateTime.now (DateTime => tanggal dan waktu hari ini)
    DateTime lastDate = DateTime(today.year, today.month - 3, 01); //todo: DateTime lastDate diassign DateTime 3 bulan lalu di tanggal 1
    final List<DateTime> picked = await dateRangePicker.showDatePicker(
      // locale: Locale('en'),
      context: context,
      initialLastDate: toDate,
      initialFirstDate: week ? fromDate : toDate,
      firstDate: lastDate,
      lastDate: today
    );
    print(picked);
    if (picked != null && picked.length == 2) {
      setState(() {
        fromDate = picked[0];
        toDate = picked[1];
        strToDate = _getDate(toDate);
        strFromDate = _getDate(fromDate);
        week = true;
        allData = [];
        list = [];
        seriesList = [];
        seriesRenderers = [];
      });
      _getTrendGraph();
    } else if (picked.length == 1){
      setState(() {
        fromDate = picked[0];
        toDate = picked[0];
        strToDate = _getDate(toDate);
        strFromDate = _getDate(fromDate);
        week = false;
        allData = [];
        list = [];
        seriesList = [];
        seriesRenderers = [];
      });
      _getTrendGraph();
    }
  }

  GestureDetector _buildDatePicker() {
    return GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                strToDate +  ((week)? " - " + strFromDate : ''),
              ),
              SizedBox(width: 5.0),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onTap: _showDateRangePicker,
        );
  }

  Widget _buildButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: 140,
        child: RaisedButton(
          onPressed: (){
            setState(() {
              week = !week;
            });
            _reset();
            _getTrendGraph();
          },
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                (week) ? "Mingguan" : "Harian",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    );
  }

  Widget _buildGraph() {
    print("on _buildGraph()");
    print(seriesList);
    print(seriesList.length);
    print(seriesRenderers.length);
    return Container(
      padding: EdgeInsets.all(10),
      height: 300.0,
      width: 400.0,
      child: charts.TimeSeriesChart(seriesList,
          animate: false,
          defaultInteractions: false,
          primaryMeasureAxis: charts.NumericAxisSpec(
            viewport: charts.NumericExtents(0, graph.maxRange),
            //tickProviderSpec: charts.BasicNumericTickProviderSpec(dataIsInWholeNumbers: true, desiredTickCount: 9)
          ),
          dateTimeFactory: const charts.LocalDateTimeFactory(),
          customSeriesRenderers: seriesRenderers,
          /*defaultRenderer:
            charts.LineRendererConfig(includeArea: true, stacked: false),*/
          domainAxis: new charts.DateTimeAxisSpec(
              tickProviderSpec: charts.DayTickProviderSpec(
                  useMinute: !week, increments: [1, 5, 10, 15, 20, 30, 45, 60]),
              tickFormatterSpec: new charts.AutoDateTimeTickFormatterSpec(
                  minute: new charts.TimeFormatterSpec(
                      format: 'HH:mm', transitionFormat: 'HH:mm'
                  )
              )
          )
      ),
    );
  }

  Widget _buildDateTime() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      child: Column(
        children: <Widget>[
          _buildDatePicker()
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      child: Column(
        children: <Widget>[
          _buildButton(),
          _buildDateTime(),
          SizedBox(height: 16),
          _buildGraph()
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title : Text("Graph"),),
        body: _buildContent()
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