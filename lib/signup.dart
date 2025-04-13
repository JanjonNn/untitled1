import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/proviers/Userr_Function_Provider.dart';
import 'package:untitled1/widgets/textformfield.dart';

import 'login.dart';

class Signup extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Textformfield(
                label: 'name',
                controller: name,
                icon: Icon(Icons.person),
              ),
              Textformfield(
                label: 'phone',
                controller: phone,
                icon: Icon(Icons.phone),
              ),
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
                child: Consumer<signupProvider>(
                  builder: (context, value, child) {
                    return ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          await value.signupprovider(
                              name.text, password.text, email.text, phone.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(value.model?.message ?? ""),
                            ),
                          );
                          if (value.model?.status == true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          }
                        }
                      },
                      child: Text(
                        "Sign up",
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text("log in here"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
