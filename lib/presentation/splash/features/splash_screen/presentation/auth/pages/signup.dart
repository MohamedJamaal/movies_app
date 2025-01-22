import 'package:flutter/material.dart';
import 'package:movies_app/common/helper/navigation/appNavigation.dart';
import 'package:movies_app/core/configs/theme/app_colors.dart';
import 'package:movies_app/presentation/splash/features/splash_screen/presentation/auth/pages/signin.dart';
import 'package:reactive_button/reactive_button.dart';
import 'package:flutter/gestures.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 100,
          right: 16,
          left: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signupText(),
            const SizedBox(
              height: 50,
            ),
            _emailField(),
            const SizedBox(
              height: 15,
            ),
            _passwordField(),
            const SizedBox(
              height: 15,
            ),
            _signinBtn(),
            const SizedBox(
              height: 30,
            ),
            _signinText(context),
          ],
        ),
      ),
    );
  }

  Widget _signupText() {
    return const Text(
      'Signup',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Email',
      ),
    );
  }

  Widget _passwordField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  Widget _signinBtn() {
    return ReactiveButton(
      title: "Signin",
      activeColor: AppColors.primary,
      onPressed: () async {},
      onSuccess: () {},
      onFailure: (error) {},
    );
  }

  Widget _signinText(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: 'Have an account? ',
          ),
          TextSpan(
            text: 'Sign up',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const SigninPage());
              },
          ),
        ],
      ),
    );
  }
}
