import 'package:get/state_manager.dart';
import 'package:simple_blog_app/Models/Blog.dart';
import 'package:simple_blog_app/Services/blogService.dart';

class BlogController extends GetxController {
  var BlogList = List<Blog>().obs;
  var blog = new Blog().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchBlog();
    super.onInit();
  }

  void fetchBlog() async {
    try {
      isLoading(true);
      var blogs = await BlogService().getBlog();
      if (blogs != null) {
        BlogList.value = blogs;
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchBlogById(int id) {
    for (Blog b in BlogList) if (b.id == id) blog.value = b;
    isLoading(false);
  }
}
