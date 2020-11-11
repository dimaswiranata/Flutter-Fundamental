import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_range_picker/date_range_picker.dart' as dateRangePicker;
import 'package:intl/intl.dart';

import 'adaptive_date_picker.dart';

class BelajarDateRangePicker extends StatefulWidget {
  @override
  _BelajarDateRangePickerState createState() => _BelajarDateRangePickerState();
}

class _BelajarDateRangePickerState extends State<BelajarDateRangePicker> {

  DateTime _fromDate, _toDate;
  final _dateFormatter = DateFormat('dd MMM');
  final _strFormatter = DateFormat('yyyyMMdd');
  String _strToDate, _strFromDate;
  bool _week = true;

  @override
  void initState() {
    super.initState();
    _fromDate = DateTime.now().subtract(Duration(days: 7)); //todo: DateTime _fromDate diassign 7 hari DateTime.now
    _toDate = DateTime.now(); //todo: _toDate diassign DateTime.now (DateTime => tanggal dan waktu hari ini)
    _strToDate = _getDate(_toDate);
    _strFromDate = _getDate(_fromDate);
  }

  void _showDatePicker() async {
    DateTime today = DateTime.now(); //todo: DateTime today diassign DateTime.now (DateTime => tanggal dan waktu hari ini)
    DateTime lastDate = DateTime(today.year, today.month - 3, 01); //todo: DateTime lastDate diassign DateTime 3 bulan lalu di tanggal 1
    
    DateTime picked = await AdaptiveDatePicker.show(
        locale: Locale('en'),
        context: context,
        initialDate: _toDate,
        firstDate: lastDate,
        lastDate: today);
    if (picked != null) {
      setState(() {
        _toDate = picked;
        _fromDate = _toDate.subtract(Duration(days: 7));
        _strToDate = _getDate(_toDate);
        _strFromDate = _getDate(_fromDate);
      });
    }
  }

  String _getDate(DateTime dateParams) {
    String temp = _dateFormatter.format(dateParams);
    return temp;
  }

  void _showDateRangePicker() async {
    DateTime today = DateTime.now(); //todo: DateTime today diassign DateTime.now (DateTime => tanggal dan waktu hari ini)
    DateTime lastDate = DateTime(today.year, today.month - 3, 01); //todo: DateTime lastDate diassign DateTime 3 bulan lalu di tanggal 1
    final List<DateTime> picked = await dateRangePicker.showDatePicker(
        // locale: Locale('en'),
        context: context,
        initialLastDate: _toDate,
        initialFirstDate: _fromDate,
        firstDate: lastDate,
        lastDate: today);
    print(picked);
    if (picked != null && picked.length == 2) {
      setState(() {
        _fromDate = picked[0];
        _toDate = picked[1];
        _strToDate = _getDate(_toDate);
        _strFromDate = _getDate(_fromDate);
        _week = true;
      });
    } else if (picked.length == 1){
      setState(() {
        _fromDate = picked[0];
        _toDate = picked[0];
        _strToDate = _getDate(_toDate);
        _strFromDate = _getDate(_fromDate);
        _week = false;
      });
    }
  }

  Widget _buildDateTime() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      child: Column(
        children: <Widget>[
          _week 
          ? _buildWeekly()
          : _buildDaily(),
        ],
      ),
    );
  }

  GestureDetector _buildWeekly() {
    return GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _strToDate + " - " + _strFromDate,
              ),
              SizedBox(width: 5.0),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onTap: _showDateRangePicker,
        );
  }

  GestureDetector _buildDaily() {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _strToDate,
          ),
          SizedBox(width: 5.0),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      onTap: _showDateRangePicker,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title : Text("Date Range Picker"),),
        body: _buildDateTime()
      )
    );
  }
}