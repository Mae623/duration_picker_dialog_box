import 'package:flutter/material.dart';
import 'package:duration_picker_dialog_box/duration_picker_dialog_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Duration _duration = Duration();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
          child: TextButton(
        onPressed: () async {
          showDurationPicker(
              context: context,
              initialDuration: Duration(minutes: 25),
              durationPickerMode: DurationPickerMode.Hour,
              headText: '修改后的选时组件',
              showFields: false,
              themeColor: Colors.pinkAccent);
        },
        child: Text("Show Duration Box "),
      )
          // DurationPicker(
          //   duration: _duration,
          //   onChange: (value) {
          //     setState(() {
          //       _duration = value;
          //       //print(duration);
          //     });
          //   },
          //   //snapToMins: 5,
          // )
          ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
