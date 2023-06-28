import 'package:flutter/material.dart';

import 'chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Chart Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Radar Chart',
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: RadarChart(
                bgColor: const Color(0xFFf0f0f0),
                webLineWidth: 1,
                webLineColor: Colors.grey.withOpacity(0.5),
                markerSize: 2,
                xLabels: List.of(["김환용", "이우경", "서기웅", "김정현", "박종현"]),
                yDrawLabels: true,
                data: RadarData(
                  List.of([
                    RadarDataSet(
                      color: Colors.red,
                      fillColor: Colors.red.withOpacity(0.3),
                      lineWidth: 1.2,
                      entries: List.of([
                        RadarEntry(70),
                        RadarEntry(80),
                        RadarEntry(90),
                        RadarEntry(30),
                        RadarEntry(50),
                      ]
                    )),
                    RadarDataSet(
                      color: Colors.blue,
                      fillColor: Colors.blue.withOpacity(0.3),
                      lineWidth: 1.2,
                      entries: List.of([
                        RadarEntry(30),
                        RadarEntry(50),
                        RadarEntry(70),
                        RadarEntry(80),
                        RadarEntry(90),
                      ]
                    )),
                    RadarDataSet(
                      color: Colors.yellow,
                      fillColor: Colors.yellow.withOpacity(0.3),
                      lineWidth: 1.2,
                      entries: List.of([
                        RadarEntry(50),
                        RadarEntry(70),
                        RadarEntry(80),
                        RadarEntry(90),
                        RadarEntry(70),
                      ]
                    )),
                  ])
                ),
              ),
            )
          ]
        )
      )
    );
  }
}
