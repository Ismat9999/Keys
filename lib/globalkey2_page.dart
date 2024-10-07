import 'package:flutter/material.dart';
import 'package:valuekey/pages/counter_page.dart';

class Globalkey2Page extends StatefulWidget {
  final GlobalKey<CounterPageState> counterKey;
  const Globalkey2Page(this.counterKey);

  @override
  State<Globalkey2Page> createState() => _Globalkey2PageState();
}

class _Globalkey2PageState extends State<Globalkey2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Global Key 2"),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.counterKey.currentState!.count.toString(),style: TextStyle(fontSize: 30),),
            MaterialButton(onPressed: (){
              setState(() {
                widget.counterKey.currentState!.count++;
                print(widget.counterKey.currentState!.count);
              });
            },
              color: Colors.green,
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
