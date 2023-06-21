import 'package:chat_app_clean_architecture/features/user/user_injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final googleSignIn = GoogleSignIn();

  sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => fireStore);
  sl.registerLazySingleton(() => storage);
  sl.registerLazySingleton(() => googleSignIn);

  await userInjectionContainer();
}
