import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/proviers/userprovider.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User details"),

      ),
      body: Consumer<Userprovider>(builder: (context, value, child) {
        return SingleChildScrollView(
          child: Column(children: [

            Text("name"),
            Text("email"),
            Text("address"),
            Image.network(""),
          ],),
        );

      },),
    );
  }
}
