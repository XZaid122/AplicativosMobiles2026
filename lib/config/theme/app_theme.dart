import 'package:flutter/material.dart';
const Color  _customcolor = Colors.pink;

const List<Color> _colorThemes = [
  _customcolor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.deepPurple
];

class AppTheme {
  
  final int selectedColor;

  AppTheme({ this.selectedColor = 0})
  :assert(selectedColor >=0 && selectedColor < _colorThemes.length, 'el color solo tiene limite de 7');


ThemeData theme(){
  return ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: _colorThemes[selectedColor]
  );
}
}