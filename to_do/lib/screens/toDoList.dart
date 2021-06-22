import 'package:flutter/material.dart';
import 'package:to_do/constants.dart' as constant;
import 'package:at_commons/at_commons.dart';
import 'package:to_do/service/client_sdk_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class toDoList extends StatefulWidget {
  static final String id = 'second';
  @override
  _toDoListState createState() => _toDoListState();
}
class _toDoListState extends State<toDoList> {
// This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  //final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  List<String> atSigns = [];
  String curr_atSign = '';
  @override
  Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
// by the _incrementCounter method above.
//
// The Flutter framework has been optimized to make rerunning build methods
// fast, so that you can just rebuild anything that needs updating rather
// than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.
        title: Text('ToDo List Page'),
      ),
      body: Center(
// Center is a layout widget. It takes a single child and positions it
// in the middle of the parent.
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextField(
                    decoration:
                    InputDecoration(hintText: 'Enter an @sign to chat with'),
                onChanged: (value) {
                  curr_atSign = value;
                },
                    ),
                    FloatingActionButton(
                        child: Text('Add atSign'),
                    onPressed: () {
                          _AddAtsign(curr_atSign);
                    }
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _AddAtsign(String curr_atSign) async {
    atSigns.add(curr_atSign);
    print('$curr_atSign Added! :)');
    for (int i = 0; i < atSigns.length; i++){
      print(atSigns[i].toString());
    }
    // for(i=0; i<num_instances_atsign_list; i++){
    //   String curr_atsign = atSigns.i.toString();
    //   AtKey atKey = AtKey()
        
    //     ..key = widget.dishWidget.title
    //     ..metadata = metadata
    //     ..sharedBy = atSign
    //     ..sharedWith = curr_atsign;

    //   var operation = OperationEnum.update;

    //   await ClientSdkService.getInstance().notify(atKey, value, operation);
    // }
  }
}