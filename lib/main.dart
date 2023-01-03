import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScrollbarS()
    );
  }
}

class ScrollbarS extends StatefulWidget {
  const ScrollbarS({super.key});

  @override
  State<ScrollbarS> createState() => _ScrollbarSState();
}

class _ScrollbarSState extends State<ScrollbarS> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Scrollbar",style: TextStyle(fontWeight: FontWeight.normal),),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8,8,8,0),
          child: SizedBox(
            child: Scrollbar(
              controller: ScrollController(),
              thumbVisibility: true,
              // interactive: true,
              // notificationPredicate: (notification) {
              //   return true;
              // },
              radius: const Radius.circular(20),
              scrollbarOrientation: ScrollbarOrientation.right,
              thickness: 8,
              // trackVisibility: false,
              child: ListView.builder(
                primary: true,
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    color: index.isEven
                      ? Colors.red
                      : Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Scrollable : Index $index',style: const TextStyle(color: Colors.white),),
                    )
                  );
                } 
              ),
            )
          )
        ),
      ),
    );
  }
}
