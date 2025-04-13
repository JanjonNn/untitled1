import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/proviers/Userr_Function_Provider.dart';
import 'package:untitled1/signup.dart';
import 'package:untitled1/widgets/textformfield.dart';

import 'details.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Textformfield(
              label: 'email',
              controller: email,
              icon: Icon(Icons.email),
            ),
            Textformfield(
              label: 'password',
              controller: password,
              icon: Icon(Icons.password),
            ),

            SizedBox(
              child: Consumer<loginProvider>(
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          await value.loginprovider(
                            password.text, email.text, );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(value.model?.message ?? ""),
                            ),
                          );
                          if (value.model?.status == true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(),
                              ),
                            );
                          }
                        }
                      },
                      child: Text(
                        "Log in",
                      ),
                    ),
                  );
                },
              ),
            ),
              SizedBox(height: 30,),
              TextButton(

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
                child: Text("Sign up here"),
              ),
          ],
        ),
      ),
    );
  }
}
