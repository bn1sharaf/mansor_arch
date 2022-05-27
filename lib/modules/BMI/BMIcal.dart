import 'package:flutter/material.dart';

class BMIcal extends StatelessWidget {
  const BMIcal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MDI Calculate"),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(child: Icon(Icons.male, size: 50)),
                        Text("Male", style: TextStyle(fontSize: 30.0)),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(child: Icon(Icons.female, size: 50)),
                        Text("Female", style: TextStyle(fontSize: 30.0)),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("180",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                      Text("CM")
                    ],
                  ),
                  Slider(value: 180, min: 80, max: 220, onChanged: (_) {}),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text("25", style: TextStyle(fontSize: 25.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                            ])
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text("25", style: TextStyle(fontSize: 25.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                            ])
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(
            child: Text("CALCULATE", style: TextStyle(fontSize: 25.0)),
            onPressed: () {},
          ),
        )
      ]),
    );
  }
}
