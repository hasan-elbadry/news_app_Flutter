
import 'package:flutter/material.dart';
import 'package:news_project_api_flutter/models/news_model.dart';

import '../services/api_service.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsItemModel> news = [];

  Future<void> getAll() async {
    news = await ApiService.getAll();
    print(news);
    notifyListeners();
  }
}
