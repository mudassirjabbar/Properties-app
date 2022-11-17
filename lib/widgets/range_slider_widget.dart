import 'package:flutter/material.dart';

class RangeSliderContainer extends StatefulWidget {
  const RangeSliderContainer({super.key});

  @override
  State<RangeSliderContainer> createState() => _RangeSliderContainerState();
}

class _RangeSliderContainerState extends State<RangeSliderContainer> {
  static double _lowerValue = 1.0;
  static double _upperValue = 100.0;

  RangeValues values = RangeValues(_lowerValue, _upperValue);
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: const Color(0xff00D2AA),
        trackHeight: 12,
        overlayColor: Colors.transparent,
        thumbColor: const Color(0xff3C286E),
        valueIndicatorColor: const Color(0xff3C286E),
        inactiveTrackColor: const Color.fromRGBO(0, 210, 170, 0.3),
        minThumbSeparation: 500,
        activeTickMarkColor: const Color(0xff00D2AA),
      ),
      child: RangeSlider(
        divisions: 20,
        labels: RangeLabels(
          values.start.toString(),
          values.end.toString(),
        ),
        min: _lowerValue,
        max: _upperValue,
        values: values,
        onChanged: ((val) {
          setState(() {
            values = val;
          });
        }),
      ),
    );
  }
}
