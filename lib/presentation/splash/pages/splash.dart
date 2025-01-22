import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/common/helper/navigation/appNavigation.dart';
import 'package:movies_app/core/configs/assets/app_images.dart';
import 'package:movies_app/presentation/splash/features/splash_screen/presentation/auth/pages/signin.dart';
import 'package:movies_app/presentation/splash/features/splash_screen/presentation/cubit/splash_screen_cubit.dart';
import 'package:movies_app/presentation/splash/features/splash_screen/presentation/home/pages/home.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashScreenCubit, SplashScreenState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            AppNavigator.pushReplacement(context, SigninPage());
          }
          if (state is Authenticated) {
            AppNavigator.pushReplacement(context, HomePage());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.splashBackground))),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff1A1B20).withOpacity(0),
                    const Color(0xff1A1B20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
