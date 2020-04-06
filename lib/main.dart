import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_test_ci_cd/service/get_it_configuration.dart';
import 'package:flutter_test_ci_cd/view_model/counter_store.dart';
import 'package:provider/provider.dart';

void main() {
  configure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<CounterStore>(
      create: (_) => getIt.get<CounterStore>(),
      dispose: (_, store) => getIt.unregister<CounterStore>(
          instance: store, disposingFunction: (s) => s.dispose()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterStore counterStore;

  @override
  void didChangeDependencies() {
    counterStore ??= Provider.of<CounterStore>(context, listen: false);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${counterStore.counter}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          FlatButton(
            onPressed: counterStore.inc,
            child: Icon(Icons.add),
          ),
          Spacer(),
          FlatButton(
            onPressed: counterStore.dec,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
