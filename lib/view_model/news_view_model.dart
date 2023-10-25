

import 'package:news_app_flutter/repository/news_repository.dart';
import 'package:news_app_flutter/models/news_channel_headlines_model.dart';
class NewsViewModel {

  final _rep = NewsRepository();

  Future<NewsChannelHeadlinesModel> getfetchNewsChannelHeadLinesApi() async {
    final response = await _rep.fetchNewsChannelHeadLinesApi();
    return response;
  }
}