import 'package:couchbash_login/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameTED = useTextEditingController();
    final emailTED = useTextEditingController();
    final passTED = useTextEditingController();
    useEffect(() {
      Future.delayed(Duration.zero, () async {
        final res = await ref.read(homeScreenProvider.notifier).init(email);
        if (res != null) {
          nameTED.text = res.name;
          emailTED.text = res.email;
          passTED.text = res.password;
        }
      });
      return;
    }, const []);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.white70,
            Colors.lightGreen[50]!,
            Colors.lightGreen[200]!
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'User Details',
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
                    onPressed: () => ref.read(homeScreenProvider.notifier).save(
                          nameTED.text,
                          emailTED.text,
                          passTED.text,
                        ),
                    child: const Text(
                      'SAVE',
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
