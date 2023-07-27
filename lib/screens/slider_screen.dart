import 'package:app_inicial/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Check'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            Checkbox(
              value: _sliderEnabled,
              onChanged: ((value) {
                _sliderEnabled = value ?? false;

                setState(() {});
              }),
            ),
            CheckboxListTile(
              title: const Text('Enabled'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? false;
                setState(() {});
              },
            ),
            Switch(
              value: _sliderEnabled,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            SwitchListTile(
              value: _sliderEnabled,
              activeColor: AppTheme.primary,
              title: const Text('Habilitar'),
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://i.pinimg.com/originals/91/f3/84/91f384d1cb0780b6def9de7bfa294f97.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            )
          ],
        ),
      ),
    );
  }
}
