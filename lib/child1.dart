part of 'main.dart';

class Child1 extends StatefulWidget {
  final String? title;

  const Child1({Key? key, this.title}) : super(key: key);

  @override
  State<Child1> createState() => _Child1State();
}

class _Child1State extends State<Child1> {
  final _oldTitle= 'Child One, it\'s original title';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title??_oldTitle,
              style: Theme.of(context).primaryTextTheme.headline4,
            ),
            Card(child: TextButton(onPressed: (){},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Action 2',textScaleFactor: 3,),
                ))),
          Card(child: TextButton(onPressed: (){},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Action 3',textScaleFactor: 3,),
                ))),
          Card(child: TextButton(onPressed: (){},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Action 4',textScaleFactor: 3,),
                ))),
    ],
        ));
  }
}

