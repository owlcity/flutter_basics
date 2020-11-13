import 'package:flutter/material.dart';

class StateManagementDemoOne extends StatefulWidget {
  StateManagementDemoOne({Key key}) : super(key: key);

  @override
  _StateManagementDemoOneState createState() => _StateManagementDemoOneState();
}

class _StateManagementDemoOneState extends State<StateManagementDemoOne> {
  int _count = 1;

  void _increaseCount() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State-management'),
      ),
      body: Count(count: _count,increaseCount: _increaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCount,
      ),
    );
  }
}

class Count extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;
  const Count({Key key, this.count, this.increaseCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    ));
  }
}