import 'dart:convert';

import 'package:news_app_flutter/models/news_channel_headlines_model.dart';
import 'package:news_app_flutter/res/api_url.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadLinesApi() async {
   AppUrl appUrl=AppUrl();
   


   String url=AppUrl.topHeadLines+appUrl.readKey();
   
   final response= await http.get(Uri.parse(url));

   if(response.statusCode==200)
     {
    final body=jsonDecode(response.body);
       return NewsChannelHeadlinesModel.fromJson(body);



     }
   throw Exception('Error');





  }





}
