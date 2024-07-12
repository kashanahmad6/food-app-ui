import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUp() async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
    createUserDocument(userCredential);
  }

  Future<void> createUserDocument(UserCredential usercredential) async {
    if (usercredential.user != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(usercredential.user!.email)
          .set({
        'email': usercredential.user!.email,
        'password': nameController.text,
        'username': passwordController.text,
      });
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 160),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'REGISTER YOURSELF',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: nameController,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.secondary,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: emailController,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.secondary,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.secondary,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: signUp,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
