import 'dart:convert';
import 'package:http/http.dart';
import 'package:simple_blog_app/Models/Blog.dart';
import 'package:simple_blog_app/Models/api.dart';

class BlogService {
  static String apiUrl = Api().baseUrl;

  Future<List<Blog>> getBlog() async {
    Response res = await get(apiUrl);
    if (res.statusCode == 200) {
      Map<String, dynamic> map = json.decode(res.body);
      List<dynamic> data = map["blogs"];
      List<Blog> blogs =
          data.map((dynamic item) => Blog.fromJson(item)).toList();
      return blogs;
    } else {
      throw "Failed to load profile list";
    }
  }
}
