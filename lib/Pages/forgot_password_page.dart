import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:activilit/providers/auth_provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Consumer(builder: (context, ref, _) {
        final auth = ref.watch(authenticationProvider);
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                child: const Text('Reset Password'),
                onPressed: () async {
                  // Using the resetPassword method from the AuthProvider
                  await auth
                      .resetPassword(email: _emailController.text)
                      .then((value) {
                    Navigator.of(context).pop();

                    final snackBar = SnackBar(
                      content: Text(
                          'Password reset email sent to ${_emailController.text}!'),
                      // action: SnackBarAction(
                      //   label: 'Undo',
                      //   onPressed: () {
                      //     // Some code to undo the change.
                      //   },
                      // ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
              ),
            ],
          ),
        );
      }),
    );
  }

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   super.dispose();
  // }
}
