import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nudge_assignment/screens/NewPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home Page", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: SizedBox.shrink()),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton.large(
                  shape: CircleBorder(),
                  backgroundColor: Colors.greenAccent[200],
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                          child: Dialog(
                        backgroundColor: Colors.white,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 2.4,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Modal",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ));
                    },
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Modal", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
