import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/details.dart';
import 'package:untitled1/male.dart';
import 'package:untitled1/proviers/userprovider.dart';

import 'feamle.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random User"),
      ),
      body: Consumer<Userprovider>(
        builder: (context, value, child) {
          return SingleChildScrollView(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Text("Name"),
                            Text("email"),
                            Image.network("URL"),

                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Male(),
                              ),
                            );
                          },
                          child: Text("male"),
                        ),
                        SizedBox(width: 100,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>Feamle (),
                              ),
                            );
                          },
                          child: Text("female"),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
