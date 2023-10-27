
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app_flutter/constants/font_styles.dart';
import 'package:news_app_flutter/models/news_channel_headlines_model.dart';
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
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return     Scaffold(

      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(


            onPressed: () {

            },
            icon: Image.asset('assets/category.png',

            height: 30,width: 30,

            ))
        ,
        title: Text('News',style: TextStyle(fontFamily: FontStyles.CarosSoftBold),),),
      body: ListView(
        children: [

          SizedBox(

              height:  height * .55,
            width: width,
            child: FutureBuilder<NewsChannelHeadlinesModel>(



                future: newsViewModel.getfetchNewsChannelHeadLinesApi(),

                builder:(BuildContext context, snapshot) {

                  if(snapshot.connectionState==ConnectionState.waiting)
                    {
                      return Center(
                        child:  SpinKitCircle(
                          color: Colors.blue,
                          size: 50,

                        ),


                      );



                    }
                  else
                    {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,


                        itemCount: snapshot.data!.articles!.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [ Container(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.02),
                                    height:  height * 0.6,
                                    width:  width * 0.9,


                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                       
                                      
                                      child: CachedNetworkImage(

                                          imageUrl:snapshot.data!.articles![index].urlToImage.toString(),
                                        fit: BoxFit.cover,
                                        errorWidget: (context, url, error) => Icon(Icons.error_outline,color: Colors.red,),
                                        placeholder: (context, url) =>Container(

                                          child: spinkit2,


                                        ) ,

                                      ),
                                    ),
                                  ),



                                )],


                              ),
                            );


                          },);



                    }



                }, ),





          ),



        ],



      ),


    );
  }




}
const spinkit2=SpinKitFadingCircle(
size:  50,
  color: Colors.amber,


);