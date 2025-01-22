import 'package:bloc/bloc.dart';

part 'splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(DisplaySplashScreen());

  void appstarted() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(UnAuthenticated());
  }
}
