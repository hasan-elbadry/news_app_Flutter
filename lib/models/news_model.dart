class NewsModel {
  static List<NewsItemModel> fetchData(dynamic json) {
    List<NewsItemModel> news = [];
    for (int i = 0; i < 10; i++) {
      news.add(NewsItemModel(
        publishedAt: json['articles'][i]['publishedAt'],
        title: json['articles'][i]['title'],
        url: json['articles'][i]['url'],
      ));
    }
    return news;
  }
}

class NewsItemModel {
  NewsItemModel({
    required this.publishedAt,
    required this.title,
    required this.url,
  });

  String title;
  String url;
  String publishedAt;
}
