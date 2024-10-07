import 'package:flutter/material.dart';
import 'package:valuekey/globalkey2_page.dart';
import 'package:valuekey/pages/counter_page.dart';

class GlobalkeyPage extends StatefulWidget {
  const GlobalkeyPage({super.key});

  @override
  State<GlobalkeyPage> createState() => _GlobalkeyPageState();
}

class _GlobalkeyPageState extends State<GlobalkeyPage> {

  late GlobalKey<CounterPageState>_counterState;
  late int count;

  _callGlobalKey2Page(){
    Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext context){
      return Globalkey2Page(_counterState);
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counterState=GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Global Key"),
      ),
      
      body:Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CounterPage(
            key: _counterState,
          ),
        ],  
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          _callGlobalKey2Page();
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
