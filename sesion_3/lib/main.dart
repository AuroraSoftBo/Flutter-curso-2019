import 'package:flutter/material.dart';
import 'package:sesion_3/UI/Layouts/today.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  TabController _tabController;

  //init state
  //set state

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings,color: Colors.blue,),
            onPressed: (){
              //TODO: ingresar a las configuraciones
            },)
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text('Fitness App',style: TextStyle(
            color: Colors.blue,fontWeight: FontWeight.w300
          )),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(child: Text('Today',style: TextStyle(
                color: Colors.blue
              ),),),
              Tab(child: Text('Food',style: TextStyle(
                color: Colors.blue
              )),),
              Tab(child: Text('Charts',style: TextStyle(
                color: Colors.blue
              )),),
              Tab(child: Text('Map',style: TextStyle(
                color: Colors.blue
              )),),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Today(),
            Container(color: Colors.red,),
            Container(color: Colors.blue,),
            Container(color: Colors.yellow,),
          ],
        ),
      ),
    );
  }
}
