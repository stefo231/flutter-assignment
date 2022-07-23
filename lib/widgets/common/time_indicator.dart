import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TimeIndicator extends StatefulWidget {
  const TimeIndicator({Key? key}) : super(key: key);

  @override
  State<TimeIndicator> createState() => _TimeIndicatorState();
}

class _TimeIndicatorState extends State<TimeIndicator>
    with SingleTickerProviderStateMixin {
  Duration _previoslyElapsed = Duration.zero;
  Duration _currentlyElapsed = Duration.zero;
  Duration get _elapsed => _previoslyElapsed + _currentlyElapsed;
  bool _isRunning = false;
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((elapsed) {
      setState(() {
        _currentlyElapsed = elapsed;
      });
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _toggleRunning() {
    setState(() {
      _isRunning = !_isRunning;
      if (_isRunning) {
        _ticker.start();
      } else {
        _ticker.stop();
        _previoslyElapsed += _currentlyElapsed;
        _currentlyElapsed = Duration.zero;
      }
    });
  }

  void _reset() {
    _ticker.stop();
    setState(() {
      _isRunning = false;
      _previoslyElapsed = Duration.zero;
      _currentlyElapsed = Duration.zero;
    });
  }

  void _checker(double percent) {
    if (percent >= 1.0) {
      _reset();
      _toggleRunning();
    }
  }

  @override
  Widget build(BuildContext context) {
    // for smoother experience we will work with milliseconds
    double seconds = _elapsed.inMilliseconds / 1000;
    // divide by how much time we want to give to the user to answer,
    // for example 30 seconds
    double timePassedInPercent = seconds / 30;

    _checker(timePassedInPercent);
    // print("Elapsed: ${(2 * pi / 60000) * _elapsed.inMilliseconds}");
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: LinearProgressIndicator(
            value: timePassedInPercent,
            color: Colors.white,
            backgroundColor: Colors.grey.shade300,
            valueColor:
                AlwaysStoppedAnimation<Color>(Colors.lightGreenAccent.shade400),
          ),
        ),
        // Row(
        //   children: [
        //     ElevatedButton(
        //         onPressed: _toggleRunning, child: const Text("Start")),
        //     ElevatedButton(onPressed: _reset, child: const Text("Stop")),
        //   ],
        // ),
      ],
    );
  }
}
