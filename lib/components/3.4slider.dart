import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  SliderDemo({Key key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('值: $_sliderValue'),
          Slider(
            value: _sliderValue,
            label: '$_sliderValue',
            min: 0,
            max: 100,
            divisions: 4,
            activeColor: Colors.red,
            inactiveColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
