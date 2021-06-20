import 'package:dio/dio.dart';
import 'package:getx_demo/models/user_model.dart';

class UsersApi {
  // singleton
  UsersApi._internal();
  static final UsersApi _instance = UsersApi._internal();
  static UsersApi get instance => _instance;

  final _dio = Dio();

  Future<List<UserModel>> getUsers(int page) async {
    try {
      final Response response = await _dio.get(
        'https://reqres.in/api/users',
        queryParameters: {
          "page": page,
          "delay": 3,
        },
      );
      // transforma em list
      return (response.data['data'] as List)
          .map((e) => UserModel.fromJson(e))
          .toList();
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return List.empty();
    }
  }
}
