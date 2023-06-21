import 'package:chat_app_clean_architecture/features/app/home/home_page.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/cubit/auth/auth_cubit.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/cubit/credential/credential_cubit.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/pages/credential/login_page.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/pages/credential/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/dependency_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyA7H5uPRW2IjWfMj4YROcqID2GYuF9-6bM',
      appId: '1:73055759374:web:ce00d8f523fe8b28a5e05f',
      messagingSenderId: "73055759374",
      projectId: "gc-ca-cca0a",
    ),
  );
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => di.sl<AuthCubit>()..appStarted(),
        ),
        BlocProvider<CredentialCubit>(
          create: (_) => di.sl<CredentialCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.green,
            ),
            title: 'Group chat',
            home: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, authState) {
                if (authState is Authenticated) {
                  return HomePage();
                } else {
                  return SignUpPage();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
