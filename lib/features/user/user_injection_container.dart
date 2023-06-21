import 'package:chat_app_clean_architecture/features/dependency_injection.dart';
import 'package:chat_app_clean_architecture/features/user/data/remote_data_source/user_remote_data_source.dart';
import 'package:chat_app_clean_architecture/features/user/data/remote_data_source/user_remote_data_source_impl.dart';
import 'package:chat_app_clean_architecture/features/user/data/repository/user_repository_impl.dart';
import 'package:chat_app_clean_architecture/features/user/domain/repository/user_repository.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/forgot_password_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/get_all_users_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/get_create_current_user_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/get_current_uid_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/get_single_user_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/get_update_user_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/google_auth_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/is_sign_in_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/sign_in_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/sign_out_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/domain/usecases/sign_up_usecase.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/cubit/auth/auth_cubit.dart';
import 'package:chat_app_clean_architecture/features/user/presentation/cubit/credential/credential_cubit.dart';

Future<void> userInjectionContainer() async {
  //blocs and cubits
  sl.registerFactory<AuthCubit>(
    () => AuthCubit(
      isSignInUseCase: sl.call(),
      signOutUseCase: sl.call(),
      getCurrentUidUseCase: sl.call(),
    ),
  );

  sl.registerFactory<CredentialCubit>(
    () => CredentialCubit(
      signUpUseCase: sl.call(),
      signInUseCase: sl.call(),
      forgotPasswordUseCase: sl.call(),
      googleAuthUseCase: sl.call(),
    ),
  );

  //use cases
  sl.registerLazySingleton<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<GetAllUsersUseCase>(
    () => GetAllUsersUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<GetCreateCurrentUserUseCase>(
    () => GetCreateCurrentUserUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<GetCurrentUIDUseCase>(
    () => GetCurrentUIDUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<GetSingleUserUseCase>(
    () => GetSingleUserUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<GetUpdateUserUseCase>(
    () => GetUpdateUserUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<GoogleAuthUseCase>(
    () => GoogleAuthUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<IsSignInUseCase>(
    () => IsSignInUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<SignOutUseCase>(
    () => SignOutUseCase(
      repository: sl.call(),
    ),
  );

  sl.registerLazySingleton<SignUpUseCase>(
    () => SignUpUseCase(
      repository: sl.call(),
    ),
  );

  //repositories
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      remoteDataSource: sl.call(),
    ),
  );

  //remote data sources
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(
      fireStore: sl.call(),
      auth: sl.call(),
      googleSignIn: sl.call(),
    ),
  );
}
