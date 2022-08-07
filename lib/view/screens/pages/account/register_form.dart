import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pixcloudx/view/screens/pages/account/account_page.dart';
import 'package:pixcloudx/view/widgets/cta_button.dart';

// ignore: must_be_immutable
class RegisterForm extends StatefulWidget {
  RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  String username = '';

  String email = '';

  String password = '';

  String comfirm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Register Account'),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const AccountPage()),
              );
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: const Text(
                  'Username:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FormBuilderTextField(
                onChanged: (value) {
                  setState(() {
                    username = value!;
                  });
                },
                name: 'username',
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "Type your username"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: const Text(
                  'Password:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FormBuilderTextField(
                onChanged: (value) {
                  setState(() {
                    password = value!;
                  });
                },
                obscureText: true,
                name: 'password',
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "Type your password"),
              ),
              const SizedBox(
                height: 20,
              ),
              FormBuilderTextField(
                onChanged: (value) {
                  setState(() {
                    comfirm = value!;
                  });
                },
                obscureText: true,
                name: 'comfirmpassword',
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "Comfirm your password"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: const Text(
                  'Email:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FormBuilderTextField(
                onChanged: ((value) {
                  setState(() {
                    email = value!;
                  });
                }),
                name: 'email',
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "Type your email"),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CTAButton(
                  height: 50,
                  weight: 100,
                  label: 'Register',
                  onTap: () async {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
