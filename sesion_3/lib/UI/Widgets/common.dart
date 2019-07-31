import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardTask extends StatefulWidget {
  @override
  _CardTaskState createState() => _CardTaskState();
}

class _CardTaskState extends State<CardTask> {
  
  bool _selected ;

  @override
  void initState() {
    super.initState();
    _selected = false;
  }

  @override
  Widget build(BuildContext context) {
    Widget _botonSelected() {
      return InkWell(
        onTap: () {
          setState(() {
            _selected = !_selected;
          });
        },
        child: Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Icon(
            Icons.check,
            size: 16.0,
            color: Colors.white,
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(right: 8.0),
      height: 90.0,
      width: 90.0,
      decoration: BoxDecoration(
          color: Colors.blue[800], borderRadius: BorderRadius.circular(8.0)),
      child: Stack(children: <Widget>[
        Center(
          child: Text(
            'Run\n10 km',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        _selected
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 90.0,
                  width: 90.0,
                  color: Color(0xAAFFFFFF),
                  child: Center(
                    child: Icon(Icons.check_circle_outline,size: 40.0,color: Colors.green[300],),
                  ),
                ),
              )
            : Positioned(bottom: 4.0, right: 4.0, child: _botonSelected()),
      ]),
    );
  }
}
