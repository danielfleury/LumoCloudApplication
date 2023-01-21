import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lumoimaging/auth/firebase_user_provider.dart';
import 'dart:math';
import 'dart:ui';
import 'home_page_widget.dart' as homepage;
import '../backend/backend.dart';

void main() {
  runApp(MyApp());
}

String _DynamicImageUrl = "";
// Create an empty _FocusedBody variable as a document reference to a body document

DocumentReference? _FocusedDocument;

void updateDynamicImageUrl(String value) {
  _DynamicImageUrl = value;
}

// Create an empty _FocusedBodyDocument variable as a document reference
//Create an empty Firestore document reference variable

void updateDocument(DocumentReference? value) {
  // Set the _FocusedBodyDocument variable to the value passed in
  _FocusedDocument = value;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Offset> _points = [];
  List<Offset> _finalpoints = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.black),
        child: GestureDetector(
            onTapDown: (details) {
              setState(() {
                _points.add(details.localPosition);
                if (_points.length % 2 == 0) {
                  // Create a new Firestore document that stores the last two points

                  final annotationsCreateData = {
                    'BodyDocument': _FocusedDocument,
                    'Points': [
                      _points[_points.length - 2].dx,
                      _points[_points.length - 2].dy,
                      _points[_points.length - 1].dx,
                      _points[_points.length - 1].dy,
                    ],
                  };
                  AnnotationsRecord.collection.doc().set(annotationsCreateData);
                }

                // For every two points, create a new Firestore document that stores the last two points
              });
            },
            child: Stack(children: [
              Image.network(
                _DynamicImageUrl,
                width: double.infinity,
                height: double.infinity,
              ),

              // query a list of Annotations records with a BodyDocument field that matches the _FocusedDocument variable
              StreamBuilder<List<AnnotationsRecord>>(
                stream: queryAnnotationsRecord(
                  queryBuilder: (annotationsRecord) => annotationsRecord
                      .where('BodyDocument', isEqualTo: _FocusedDocument),
                  singleRecord: false,
                ),
                builder: (context, snapshot) {
                  List<AnnotationsRecord>? annotationsRecordList =
                      snapshot.data;

                  // for each Annotations record, add the points to the _finalpoints list

                  _finalpoints = [];
                  for (int i = 0; i < annotationsRecordList!.length; i++) {
                    _finalpoints.add(Offset(annotationsRecordList[i].points![0],
                        annotationsRecordList[i].points![1]));
                    _finalpoints.add(Offset(annotationsRecordList[i].points![2],
                        annotationsRecordList[i].points![3]));
                  }

                  return CustomPaint(
                    painter: LinePainter(_finalpoints),
                    child: Container(),
                  );
                },
              ),

              // Overlay the lines and distance text on top of the image
              //CustomPaint(
              // painter: LinePainter(_points),
              // child: Container(),
              //),
            ])));
  }
}

class LinePainter extends CustomPainter {
  List<Offset> points;

  LinePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < points.length - 1; i += 2) {
      canvas.drawLine(
        points[i],
        points[i + 1],
        Paint()
          ..color = Colors.amberAccent
          ..strokeWidth = 1.0,
      );
      double distance(Offset point1, Offset point2) {
        var xDist = point1.dx - point2.dx;
        var yDist = point1.dy - point2.dy;

        return sqrt(pow(xDist, 2) + pow(yDist, 2));
      }

      double distancefinal = distance(points[i], points[i + 1]);
      String distance_string = distancefinal.toString();

      // Create a TextPainter to draw the distance text
      TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: double.parse(distance_string).toStringAsFixed(2),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        textDirection: TextDirection.ltr,
      );

      // Layout the text
      textPainter.layout();

      // Calculate the position of the text
      Offset textPosition = Offset(
        (points[i].dx + points[i + 1].dx) / 2 - textPainter.width / 2,
        (points[i].dy + points[i + 1].dy) / 2 - textPainter.height / 2,
      );

      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromPoints(
              textPosition + Offset(-10.0, -10.0),
              Offset(
                    textPosition.dx + textPainter.width,
                    textPosition.dy + textPainter.height,
                  ) +
                  Offset(10.0, 10.0)),
          Radius.circular(1000.0),
        ),
        Paint()
          ..color = Color.fromARGB(158, 0, 0, 0)
          ..style = PaintingStyle.fill,
      );

      // Paint the text on the canvas

      textPainter.paint(canvas, textPosition);

      // Create a rounded rectangle around the text. The margin between the text and the rectangle is 10.0

      canvas.drawArc(
        Rect.fromCircle(
          center: points[i],
          radius: 5.0,
        ),
        0.0,
        2 * pi,
        false,
        Paint()
          ..color = Colors.orangeAccent
          ..style = PaintingStyle.fill,
      );

      // Draw a circle at the end of the line
      canvas.drawArc(
        Rect.fromCircle(
          center: points[i + 1],
          radius: 5.0,
        ),
        0.0,
        2 * pi,
        false,
        Paint()
          ..color = Colors.orangeAccent
          ..style = PaintingStyle.fill,
      );
    }
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => true;
}
