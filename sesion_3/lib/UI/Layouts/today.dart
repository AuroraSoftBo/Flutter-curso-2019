import 'package:flutter/material.dart';
import 'package:sesion_3/UI/Widgets/charts.dart';
import 'package:sesion_3/UI/Widgets/common.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String _saludo;

  Widget _todayTask(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Good $_saludo Alvaro',
            style: TextStyle(color: Colors.black54, fontSize: 20.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'These are some task for today',
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
          Container(
            height: 100.0,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CardTask(),
                  CardTask(),
                  CardTask(),
                  CardTask(),
                  CardTask(),
                  CardTask(),
                  CardTask(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _weekTasks() {
    return Container(
      height: 160.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      color: Colors.white,
      child: Center(
        child: Text('Tareas semanales'),
      ),
    );
  }

  void determinarTiempo() {
    var now = DateTime.now();
    setState(() {
      if (now.hour > 24 && now.hour < 12) {
        _saludo = 'morning';
      } else if (now.hour > 12 && now.hour < 19) {
        _saludo = 'afternoon';
      } else {
        _saludo = 'evening';
      }
    });
  }

  @override
  void initState() {
    super.initState();
    determinarTiempo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            _todayTask(context),
            GeneralChart(),
            _weekTasks(),
          ],
        ),
      ),
    );
  }
}
