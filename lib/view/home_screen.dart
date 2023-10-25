
import 'package:flutter/material.dart';
import 'package:news_app_flutter/constants/font_styles.dart';
import 'package:news_app_flutter/view_model/news_view_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  NewsViewModel newsViewModel=NewsViewModel();


  @override
  Widget build(BuildContext context) {
    return     Scaffold(

      appBar: AppBar(title: Text('News',style: TextStyle(fontFamily: FontStyles.CarosSoftBold),),),
      body: Column(

        children: [



        ],

      ),


    );
  }
}
