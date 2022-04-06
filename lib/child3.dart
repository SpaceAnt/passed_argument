part of 'main.dart';

class Child3 extends StatefulWidget {
  const Child3({Key? key}) : super(key: key);

  @override
  State<Child3> createState() => _Child3State();
}

class _Child3State extends State<Child3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo.shade200,
        child:Text('Child3',            style: Theme.of(context).primaryTextTheme.headline3,
        ));
  }
}
