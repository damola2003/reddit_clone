import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/auth/auth_controller.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  void signInWithGoogle(WidgetRef ref) {
    ref.read(AuthControllerProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton.icon(
      onPressed: () => signInWithGoogle(ref),
      icon: Image.asset(
        "lib/pictures/google.png",
        width: 25,
      ),
      label: Text(
        "Continue with google",
        style: TextStyle(fontSize: 18, color: Colors.grey[50]),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 56, 54, 54),
          minimumSize: const Size(double.infinity, 60)),
    );
  }
}
