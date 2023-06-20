import 'package:chat_app_clean_architecture/features/user/data/remote_data_source/user_remote_data_source.dart';
import 'package:chat_app_clean_architecture/features/user/domain/entities/user_entity.dart';
import 'package:chat_app_clean_architecture/features/user/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> forgotPassword(String email) async =>
      remoteDataSource.forgotPassword(email);

  @override
  Stream<List<UserEntity>> getAllUsers(UserEntity user) =>
      remoteDataSource.getAllUsers(user);

  @override
  Future<void> getCreateCurrentUser(UserEntity user) =>
      remoteDataSource.getCreateCurrentUser(user);

  @override
  Future<String> getCurrentUId() => remoteDataSource.getCurrentUId();

  @override
  Stream<List<UserEntity>> getSingleUser(UserEntity user) =>
      getSingleUser(user);

  @override
  Future<void> getUpdateUser(UserEntity user) => getUpdateUser(user);

  @override
  Future<void> googleAuth() => remoteDataSource.googleAuth();

  @override
  Future<bool> isSignIn() => remoteDataSource.isSignIn();

  @override
  Future<void> signIn(UserEntity user) => remoteDataSource.signIn(user);

  @override
  Future<void> signOut() => remoteDataSource.signOut();

  @override
  Future<void> signUp(UserEntity user) => remoteDataSource.signUp(user);
}
