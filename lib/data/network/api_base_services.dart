abstract class BaseApiServices {
  Future<dynamic> getApi(String url);

   Future<dynamic> PostApi(dynamic data, String url);
}