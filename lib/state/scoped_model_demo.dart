import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count += 1;
    print(_count);
    notifyListeners();
  }
}

class ScopedModelDemo extends StatelessWidget {
  const ScopedModelDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('ScopedModel'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // debugPrint('aaa');
              model.increaseCount();
            },
          ),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  const CounterWrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
        // rebuildOnChange: true,
        builder: (context, _, model) => ActionChip(
            label: Text('${model.count}'),
            onPressed: () {
              model.increaseCount();
            }));
  }
}
