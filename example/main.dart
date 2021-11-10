import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SuperellipseCard(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('This is a nice, rounded card.'),
            ), // Padding
          ), // SuperellipseCard
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}

class SuperellipseCard extends StatelessWidget {
  SuperellipseCard({
    this.color = Colors.white,
    this.elevation = 1.0,
    this.child
  });

  final Color color;
  final double elevation;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: SuperellipseShape(
        borderRadius: BorderRadius.circular(28.0),
      ), // SuperellipseShape
      color: color,
      shadowColor: Colors.black38,
      elevation: elevation,
      child: child,
    ); // Material
  }
}
