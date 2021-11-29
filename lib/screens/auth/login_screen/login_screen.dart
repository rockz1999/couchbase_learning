import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameTED = useTextEditingController();
    final passTED = useTextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Couchbase Login',
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: usernameTED,
              decoration: const InputDecoration(
                label: Text(
                  'UserName',
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                hintText: 'Enter your email/number',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passTED,
              decoration: const InputDecoration(
                label: Text(
                  'Password',
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
