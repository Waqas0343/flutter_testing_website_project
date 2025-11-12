import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/header.dart';

class ContactPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Us', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder()),
                          validator: (value) => value!.isEmpty ? 'Enter your name' : null,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
                          validator: (value) => value!.isEmpty ? 'Enter your email' : null,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: messageController,
                          decoration: InputDecoration(labelText: 'Message', border: OutlineInputBorder()),
                          maxLines: 5,
                          validator: (value) => value!.isEmpty ? 'Enter a message' : null,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.snackbar('Success', 'Message Sent', snackPosition: SnackPosition.BOTTOM);
                              nameController.clear();
                              emailController.clear();
                              messageController.clear();
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
