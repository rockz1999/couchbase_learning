import 'package:couchbash_login/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameTED = useTextEditingController();
    final emailTED = useTextEditingController();
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
              controller: nameTED,
              decoration: const InputDecoration(
                label: Text(
                  'UserName',
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailTED,
              decoration: const InputDecoration(
                label: Text(
                  'Email',
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
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
                    onPressed: () =>
                        ref.read(registerScreenProvider.notifier).regsiter(
                              nameTED.text,
                              emailTED.text,
                              passTED.text,
                            ),
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
