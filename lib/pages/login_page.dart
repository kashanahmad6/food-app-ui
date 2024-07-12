import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(e.code),
            );
          });
    }

    // ignore: use_build_context_synchronously

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) {
    //     return const MyHomePage();
    //   }),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 25),
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
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.grey.shade700,
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
                onTap: signIn,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Login',
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
