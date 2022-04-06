part of 'main.dart';


class Child2 extends StatefulWidget {
  const Child2({Key? key}) : super(key: key);

  @override
  State<Child2> createState() => _Child2State();
}

class _Child2State extends State<Child2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Text('Child 2',            style: Theme.of(context).primaryTextTheme.headline3,
      ),);
  }
}


