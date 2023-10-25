

import 'package:news_app_flutter/secure_storage.dart';

class AppUrl{

  static final String _apikey='6e4c98a895384ebc918adba01fd4004c';

  SecureStorage1 secureStorage=SecureStorage1();


  void savedKey()
  {

   secureStorage.storage.writeSecureData('apikey', _apikey);

  }
String readKey()
  {

    return  secureStorage.storage.readSecureData('apikey');
  }




  static var baseUrl='https://newsapi.org/v2';
  static var topHeadLines=baseUrl+ '/top-headlines/sources?al-jazeera-english&apiKey=';



}