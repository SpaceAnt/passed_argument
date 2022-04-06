import 'package:flutter/material.dart';
part 'child1.dart';
part 'child2.dart';
part 'child3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('Just A passed argument used as: widget.title'),
        ),
        body: TheAll(
        ),
      ),
    );
  }
}

class TheAll extends StatefulWidget {
  const TheAll({Key? key}) : super(key: key);

  @override
  State<TheAll> createState() => _TheAllState();
}

class _TheAllState extends State<TheAll> with SingleTickerProviderStateMixin{
  TabController? _ctrlR;
  String? parentTochild1;

  @override
  void initState(){
    _ctrlR=TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose(){
    _ctrlR!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:const BoxConstraints(minWidth: double.infinity),
    color: Colors.greenAccent.shade200,
      child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Card(
          color: Colors.greenAccent.shade100,
          child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Old Parent message',textScaleFactor: 3),
        ),),
        Card(child: TextButton(onPressed: (){
          setState(() {
            parentTochild1='Alert, Parent Intrusor Detected !!!';
          });
        }, child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Action 1',textScaleFactor: 3,),
        ))),
        Container(
          color: Colors.green.shade900,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 6,
            labelColor: Colors.lightGreen,
            indicatorColor: Colors.greenAccent,
            controller:_ctrlR,tabs: const [
            Tab(text: 'Solar',icon: Icon(Icons.scatter_plot_outlined)),
            Tab(text: 'Battery',icon: Icon(Icons.battery_charging_full)),
            Tab(text: 'User',icon: Icon(Icons.ac_unit)),
          ]),
        ),
        Expanded(
          child: TabBarView(controller:_ctrlR,children: [
            Child1(title:parentTochild1??null),
            Child2(),
            Child3(),
          ]),
        )
      ],
    ),
    );
  }
}
