import 'package:changenotifireprovider/myclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MaterialApp(home: ChangeNotifierProvider(create: (context) => myclass(),
  child: demo(),),));
}
class demo extends StatelessWidget {

TextEditingController t=TextEditingController();
TextEditingController t1=TextEditingController();
  @override
  Widget build(BuildContext context) {

    myclass m=Provider.of(context);
    return Scaffold(appBar: AppBar(),
    body: Column(
      children: [
        ListTile(title: Text("${m.v}"),),
        ElevatedButton(onPressed: () {
          m.increment();

        }, child: Text("+")),
      
        ElevatedButton(onPressed: () {
          m.decrement();

        }, child: Text("-")),
        TextField(controller: t,),
        TextField(controller: t1,),
        ElevatedButton(onPressed: () {
          m.total(t.text, t1.text);
        }, child: Text("Submit")),
        Text("Sum=${m.sum}"),


      ],
    ),);
  }
}
