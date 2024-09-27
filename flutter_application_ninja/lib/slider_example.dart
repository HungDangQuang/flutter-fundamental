import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  
  const SliderExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SliderExampleState();
  }
}

class _SliderExampleState extends State<SliderExample> {

  double _currentSliderValue = 5;
  
  @override
  Widget build(BuildContext context) {
      return Slider(
        value: _currentSliderValue, 
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        });
  }

}
