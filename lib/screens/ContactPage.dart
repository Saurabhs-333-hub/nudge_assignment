import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nudge_assignment/screens/NewPage.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Contact Page", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: SizedBox.shrink()),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return NewPage();
              },
            ));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 98, 98),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("New Page",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
          ),
        ),
      )),
    );
    ;
  }
}
