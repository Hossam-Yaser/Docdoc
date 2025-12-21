import 'package:doc_doc/core/di/depandency_injection.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/features/all_speciality/logic/all_speciality_cubit.dart';
import 'package:doc_doc/features/all_speciality/ui/all_speciality_screen.dart';
import 'package:doc_doc/features/appointments/ui/appointments_screen.dart';
import 'package:doc_doc/features/doctor_details/ui/doctor_details.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/ui/home_screen.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/login/ui/login_screen.dart';
import 'package:doc_doc/features/onboarding/onboarding_screen.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:doc_doc/features/signup/ui/signup_screen.dart';
import 'package:doc_doc/features/view_speciality_doctors/UI/view_speciality_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //you can pass arguments to the screens through settings.arguments as className
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboarding:
        // Return the onboarding screen route
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getAllSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case Routes.allSpecialityScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<AllSpecialityCubitCubit>()..getAllSpecializations(),
            child: const AllSpecialityScreen(),
          ),
        );
      case Routes.viewSpecialityDoctors:
        return MaterialPageRoute(
          builder: (_) => const ViewSpecialityDoctors(),
          settings: settings,
        );
      case Routes.doctorDetails:
        return MaterialPageRoute(
          builder: (_) => const DoctorDetails(),
          settings: settings,
        );
      case Routes.appointmentsScreen:
        return MaterialPageRoute(builder: (_) => AppointmentsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
