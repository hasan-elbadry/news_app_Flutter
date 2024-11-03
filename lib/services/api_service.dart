import 'package:dio/dio.dart';
import '../models/news_model.dart';

class ApiService {
  static var dio = Dio();

  static Future<List<NewsItemModel>> getAll() async {
    var response = await dio.get(
        'https://newsapi.org/v2/everything?q=tesla&from=2024-10-03&sortBy=publishedAt&apiKey=7461f3cb459c416db78c2f3f3ff67bda');
    return NewsModel.fetchData(response.data);
  }
}
